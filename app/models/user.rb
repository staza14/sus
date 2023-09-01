class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  has_many :active_challenges
  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # validates :avatar, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name,
  against: [ :first_name, :last_name],
  using: {
    tsearch: { prefix: true }
  }

  has_many :entries, dependent: :destroy
  has_many :active_challenges, dependent: :destroy

  has_many :posts, dependent: :destroy

  attr_accessor :car_hours, :bus_hours, :train_hours, :cycle_hours, :foot_hours, :flight_long_hours,
                :flight_short_hours, :lights_yes, :lights_no, :clothing_zero, :clothing_sixty, :clothing_hundred,
                :clothing_hundreadeighty, :temp_fourteen, :temp_seventeen, :temp_twentyone, :temp_abovetwentyone,
                :bath, :long_shower, :short_shower,
                :meat_everyday, :meat_rarely, :no_beef, :vegetarian, :vegan, :throw_none, :throw_ten, :throw_thirty,
                :throw_abovethirty, :food_supermarket, :food_locally, :food_own, :food_dunno

  TRANSPORT_WEIGHTS = {
    car_hours: 0.16,
    bus_hours: 0.1,
    train_hours: 0.18,
    cycle_hours: 0.23,
    foot_hours: 0.23,
    flight_long_hours: 0.04,
    flight_short_hours: 0.06
  }

  HOME_WEIGHTS = {
    lights_yes: 0.18,
    lights_no: 0,
    clothing_zero: 0.17,
    clothing_sixty: 0.09,
    clothing_hundred: 0.03,
    clothing_hundreadeighty: 0,
    temp_fourteen: 0.16,
    temp_seventeen: 0.09,
    temp_twentyone: 0.03,
    temp_abovetwentyone: 0,
    bath: 0.14,
    long_shower: 0,
    short_shower: 0.04
  }

  FOOD_WEIGHTS = {
    meat_everyday: 0,
    meat_rarely: 0.09,
    no_beef: 0.06,
    vegetarian: 0.17,
    vegan: 0.2,
    throw_none: 0.1,
    throw_ten: 0.07,
    throw_thirty: 0.03,
    throw_abovethirty: 0,
    food_supermarket: 0.03,
    food_locally: 0.1,
    food_own: 0.15,
    food_dunno: 0,
  }


    def calculate_travel_score
    car_hours_weight = TRANSPORT_WEIGHTS[:car_hours] * self.car_hours.to_i
    bus_hours_weight = TRANSPORT_WEIGHTS[:bus_hours] * self.bus_hours.to_i
    train_hours_weight = TRANSPORT_WEIGHTS[:train_hours] * self.train_hours.to_i
    cycle_hours_weight = TRANSPORT_WEIGHTS[:cycle_hours] * self.cycle_hours.to_i
    foot_hours_weight = TRANSPORT_WEIGHTS[:foot_hours] * self.foot_hours.to_i
    flight_long_hours_weight = TRANSPORT_WEIGHTS[:flight_long_hours] * self.flight_long_hours.to_i
    flight_short_hours_weight = TRANSPORT_WEIGHTS[:flight_short_hours] * self.flight_short_hours.to_i

    travel_score = car_hours_weight + bus_hours_weight + train_hours_weight + cycle_hours_weight + foot_hours_weight + flight_long_hours_weight + flight_short_hours_weight
  end

  def calculate_home_score
    lights_yes_weight = HOME_WEIGHTS[:lights_yes]
    lights_no_weight = HOME_WEIGHTS[:lights_no]
    clothing_zero_weight = HOME_WEIGHTS[:clothing_zero]
    clothing_sixty_weight= HOME_WEIGHTS[:clothing_sixty]
    clothing_hundred_weight = HOME_WEIGHTS[:clothing_hundred]
    clothing_hundreadeighty_weight = HOME_WEIGHTS[:clothing_hundreadeighty]
    temp_fourteen_weight = HOME_WEIGHTS[:temp_fourteen]
    temp_seventeen_weight = HOME_WEIGHTS[:temp_seventeen]
    temp_twentyone_weight = HOME_WEIGHTS[:temp_abovetwentyone]
    temp_abovetwentyone_weight = HOME_WEIGHTS[:temp_abovetwentyone]
    bath_weight = HOME_WEIGHTS[:bath] * (self.bath != nil && self.bath.downcase == "yes" ? 1 : 100)
    long_shower_weight = HOME_WEIGHTS[:long_shower] * (self.long_shower != nil && self.long_shower.downcase == "yes" ? 1 : 100)
    short_shower_weight = HOME_WEIGHTS[:short_shower] * (self.short_shower != nil && self.short_shower.downcase == "yes" ? 1 : 100)

    home_score = bath_weight + long_shower_weight + short_shower_weight + lights_yes_weight + lights_no_weight + clothing_zero_weight +  clothing_sixty_weight + clothing_hundred_weight +
    clothing_hundreadeighty_weight + temp_fourteen_weight + temp_seventeen_weight + temp_twentyone_weight + temp_abovetwentyone_weight
  end

  def calculate_food_score
    meat_everyday_weight = FOOD_WEIGHTS[:meat_everyday] * self.meat_everyday.to_i
    meat_rarely_weight = FOOD_WEIGHTS[:meat_rarely] * self.meat_rarely.to_i
    no_beef_weight = FOOD_WEIGHTS[:no_beef] * self.no_beef.to_i
    vegetarian_weight = FOOD_WEIGHTS[:vegetarian] * self.vegetarian.to_i
    vegan_weight = FOOD_WEIGHTS[:vegan] * self.vegab.to_i
    throw_none_weight = FOOD_WEIGHTS[:throw_none] * self.throw_none.to_i
    throw_ten_weight = FOOD_WEIGHTS[:throw_ten] * self.throw_ten.to_i
    throw_thirty_weight = FOOD_WEIGHTS[:throw_thirty] * self.throw_thirty.to_i
    throw_abovethirty_weight = FOOD_WEIGHTS[:throw_abovethirty] * self.throw_abovethirty.to_i
    food_supermarket_weight = FOOD_WEIGHTS[:food_supermarket] * self.food_supermarket.to_i
    food_locally_weight = FOOD_WEIGHTS[:food_locally] * self.food_locally.to_i
    food_own_weight = FOOD_WEIGHTS[:food_own] * self.food_own.to_i
    food_dunno_weight = FOOD_WEIGHTS[:food_dunno] * self.food_dunno.to_i

    food_score = meat_everyday_weight + meat_rarely_weight + no_beef_weight +  vegetarian_weight + vegan_weight +
    throw_none_weight +  throw_ten_weight + throw_thirty_weight + throw_abovethirty_weight + food_supermarket_weight + food_locally_weight +
    food_own_weight + food_dunno_weight
  end
end
