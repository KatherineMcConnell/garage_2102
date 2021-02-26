require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/car'

class CarTest < Minitest::Test
  def test_it_exists
    car = Car.new({description: 'Green Ford Mustang', year: '1967'})

    assert_instance_of Car, car
  end

  def test_it_has_certain_attributes
    car = Car.new({description: 'Green Ford Mustang', year: '1967'})

    assert_equal 'Green', car.color
    assert_equal 'Ford', car.make
    assert_equal 'Mustang', car.model
    assert_equal '1967', car.year
  end

  def test_age
    car = Car.new({description: 'Green Ford Mustang', year: '1967'})
    current_year = Time.now.year
    expected_age = current_year - 1967
    assert_equal expected_age, car.age
  end
end
