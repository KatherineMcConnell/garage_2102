require './lib/car'
class Owner
  attr_reader :name,
              :occupation,
              :cars
  def initialize(name, occupation)
    @name = name
    @occupation = occupation
    @cars = []
  end

  def buy(car_info)
    info = car_info.split
    year = info[0]
    description = info[1..3].join(' ')
    car_hash = {description: description, year: year}
    car = Car.new(car_hash)
    @cars << car
    car
  end

  def vintage_cars
    @cars.find_all do |car|
      car.vintage?
    end
  end
end
