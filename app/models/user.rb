class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  has_many :active_challenges, dependent: :destroy
  has_many :challenges, through: :active_challenges
  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # validates :avatar, presence: true

  before_create :calculate_baseline_stats

  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name,
    against: [ :first_name, :last_name],
  using: {
    tsearch: { prefix: true }
  }

  has_many :entries, dependent: :destroy

  has_many :posts, dependent: :destroy

  attr_accessor :car_hours, :bus_hours, :train_hours, :cycle_hours, :foot_hours, :flight_long_hours, :flight_short_hours,
                :bath, :long_shower, :short_shower,
                :lights, :clothing, :temperature,
                :food, :waste, :source

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
    lights: 30,
    # lights_yes: 0.18,
    # lights_no: 0,

    clothing: 40,
    # clothing_zero: 0.17,
    # clothing_sixty: 0.09,
    # clothing_hundred: 0.03,
    # clothing_hundreadeighty: 0,
    # clothing_overeigthy: 0,

    temperature: 30,
    # temp_fourteen: 0.16,
    # temp_seventeen: 0.09,
    # temp_twentyone: 0.03,
    # temp_abovetwentyone: 0,
    bath: 0.14,
    long_shower: 0,
    short_shower: 0.04
  }

  FOOD_WEIGHTS = {
    food: 40,
    # meat_everyday: 0,
    # meat_rarely: 0.09,
    # no_beef: 0.06,
    # vegetarian: 0.17,
    # vegan: 0.2,

    waste: 30,
    # throw_none: 0.1,
    # throw_ten: 0.07,
    # throw_thirty: 0.03,
    # throw_abovethirty: 0,

    source: 30,
    # food_supermarket: 0.03,
    # food_locally: 0.1,
    # food_own: 0.15,
    # food_dunno: 0,
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
    bath_weight = HOME_WEIGHTS[:bath] * self.bath.to_i
    long_shower_weight = HOME_WEIGHTS[:long_shower] * self.long_shower.to_i
    short_shower_weight = HOME_WEIGHTS[:short_shower] * self.short_shower.to_i
    lights_weight = HOME_WEIGHTS[:lights] * self.lights.to_f
    clothing_weight = HOME_WEIGHTS[:clothing] * self.clothing.to_f
    temperature_weight = HOME_WEIGHTS[:temperature] * self.temperature.to_f
    home_score = bath_weight + long_shower_weight + short_shower_weight + lights_weight + clothing_weight + temperature_weight
  end

  def calculate_food_score
    food_weight = FOOD_WEIGHTS[:food] * self.food.to_i
    waste_weight = FOOD_WEIGHTS[:waste] * self.waste.to_i
    source_weight = FOOD_WEIGHTS[:source] * self.source.to_i

    food_score = food_weight + waste_weight + source_weight
  end

  def calculate_baseline_stats
    self.baseline_stats = self.calculate_food_score + self.calculate_travel_score + self.calculate_home_score
  end


  def friends
    receivers = self.friendships_as_asker.map(&:receiver)
    askers = self.friendships_as_receiver.map(&:asker)

    (receivers + askers).uniq
  end
end
