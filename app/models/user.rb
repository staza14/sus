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
  has_many :friendships_as_asker, class_name: "Friendship", foreign_key: :asker_id, dependent: :destroy
  has_many :friendships_as_receiver, class_name: "Friendship", foreign_key: :receiver_id, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :avatar, presence: true

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


# Transportation (20% of the overall score):
      # Car Hours: 0.04
      # Bus Hours: 0.04
      # Cycle Hours: 0.04
      # Foot Hours: 0.04
      # Flight Long Hours: 0.04
      # Flight Short Hours: 0.04

# Home (30% of the overall score):
      # Lights: 0.1
      # Clothing: 0.1
      # Temperature: 0.1

# Food ( 50% of the overall score):
      # Food: 0.2
      # Waste: 0.15
      # Source: 0.15


  TRANSPORT_WEIGHTS = {
    car_hours: 0.2,            # Less sustainable option
    bus_hours: 0.2,            # Less sustainable option
    cycle_hours: 0.06,         # Moderately sustainable option
    foot_hours: 0.04,          # More sustainable option
    flight_long_hours: 0.03,   # Moderately sustainable option
    flight_short_hours: 0.03   # Moderately sustainable option
  }


HOME_WEIGHTS = {
  lights: 0.1,
  # clothing: 0.1,
  temperature: 0.1
}

FOOD_WEIGHTS = {
  food: 0.2,
  waste: 0.15,
  source: 0.15
}



  def calculate_travel_score
    car_hours_weight = TRANSPORT_WEIGHTS[:car_hours] * self.car_hours.to_i
    bus_hours_weight = TRANSPORT_WEIGHTS[:bus_hours] * self.bus_hours.to_i
    cycle_hours_weight = TRANSPORT_WEIGHTS[:cycle_hours] * self.cycle_hours.to_i
    foot_hours_weight = TRANSPORT_WEIGHTS[:foot_hours] * self.foot_hours.to_i
    flight_long_hours_weight = TRANSPORT_WEIGHTS[:flight_long_hours] * self.flight_long_hours.to_i
    flight_short_hours_weight = TRANSPORT_WEIGHTS[:flight_short_hours] * self.flight_short_hours.to_i

    travel_score = car_hours_weight + bus_hours_weight + cycle_hours_weight + foot_hours_weight + flight_long_hours_weight + flight_short_hours_weight
  end

  def calculate_home_score
    lights_weight = HOME_WEIGHTS[:lights] * self.lights.to_f
    # clothing_weight = HOME_WEIGHTS[:clothing] * self.clothing.to_f
    temperature_weight = HOME_WEIGHTS[:temperature] * self.temperature.to_f
    home_score = lights_weight + temperature_weight
  end

  def calculate_food_score
    food_weight = FOOD_WEIGHTS[:food] * self.food.to_i
    waste_weight = FOOD_WEIGHTS[:waste] * self.waste.to_i
    source_weight = FOOD_WEIGHTS[:source] * self.source.to_i

    food_score = food_weight + waste_weight + source_weight
  end

  def calculate_baseline_stats
    self.baseline_stats = self.calculate_food_score + self.calculate_travel_score + self.calculate_home_score
    self.overall_score = self.calculate_food_score + self.calculate_travel_score + self.calculate_home_score
  end


  def friends
    receivers = self.friendships_as_asker.map(&:receiver)
    askers = self.friendships_as_receiver.map(&:asker)

    (receivers + askers).uniq
  end
end
