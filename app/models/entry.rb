class Entry < ApplicationRecord
  belongs_to :user

    TRANSPORT_WEIGHTS = {
      car_hours: 0,
      bus_hours: 0.1,
      train_hours: 0.2,
      cycle_hours: 0.35,
      foot_hours: 0.35,
    }

    attr_accessor :car_hours, :bus_hours, :train_hours, :cycle_hours, :foot_hours,  :bath, :long_shower, :short_shower, :no_bath, :beef, :lamb, :cheese, :pork, :poultry, :chocolate, :fish, :egg

    FOOD_WEIGHTS = {
      beef: 0,
      lamb: 0.05,
      cheese: 0.1,
      pork: 0.1,
      poultry: 0.15,
      chocolate: 0.15,
      fish: 0.15,
      egg: 0.25,
    }

    HOME_WEIGHTS = {
      bath: 0,
      long_shower: 0.4,
      short_shower: 0.6,
    }



  def calculate_travel_score
      car_hours_weight = TRANSPORT_WEIGHTS[:car_hours] * self.car_hours.to_i
      bus_hours_weight = TRANSPORT_WEIGHTS[:bus_hours] * self.bus_hours.to_i
      train_hours_weight = TRANSPORT_WEIGHTS[:train_hours] * self.train_hours.to_i
      cycle_hours_weight = TRANSPORT_WEIGHTS[:cycle_hours] * self.cycle_hours.to_i
      food_hours_weight = TRANSPORT_WEIGHTS[:foot_hours] * self.foot_hours.to_i
      travel_score = car_hours_weight + bus_hours_weight + train_hours_weight + cycle_hours_weight + food_hours_weight
  end

  def calculate_food_score
    beef_weight = FOOD_WEIGHTS[:beef] * self.beef.to_i
    lamb_weight = FOOD_WEIGHTS[:lamb] * self.lamb.to_i
    cheese_weight = FOOD_WEIGHTS[:cheese] * self.cheese.to_i
    pork_weight = FOOD_WEIGHTS[:pork] * self.pork.to_i
    poultry_weight = FOOD_WEIGHTS[:poultry] * self.poultry.to_i
    chocolate_weight = FOOD_WEIGHTS[:chocolate] * self.chocolate.to_i
    egg_weight = FOOD_WEIGHTS[:egg] * self.egg.to_i
    food_score = beef_weight + lamb_weight + cheese_weight + pork_weight + poultry_weight + chocolate_weight + egg_weight
  end

  def calculate_home_score
    bath_weight = HOME_WEIGHTS[:bath] * (self.bath != nil && self.bath.downcase == "yes" ? 1 : 100)
    long_shower_weight = HOME_WEIGHTS[:long_shower] * (self.long_shower != nil && self.long_shower.downcase == "yes" ? 1 : 100)
    short_shower_weight = HOME_WEIGHTS[:short_shower] * (self.short_shower != nil && self.short_shower.downcase == "yes" ? 1 : 100)
    home_score = bath_weight + long_shower_weight + short_shower_weight
  end
end
