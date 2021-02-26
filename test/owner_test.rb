require 'minitest/autorun'
require 'minitest/nyan_cat'
require './lib/owner'

class OwnerTest < Minitest::Test
  def test_it_exists
    owner = Owner.new('Regina George', 'Heiress')

    assert_instance_of Owner, owner
  end

  def test_it_has_certain_attributes
    owner = Owner.new('Regina George', 'Heiress')

    assert_equal 'Regina George', owner.name
    assert_equal 'Heiress', owner.occupation
    assert_equal [], owner.cars
  end

  def test_buy
    owner = Owner.new('Regina George', 'Heiress')
    new_car = owner.buy('1967 Green Ford Mustang')
    assert_instance_of Car, new_car
    assert_equal [new_car], owner.cars
  end

  def test_vintage_cars
    owner = Owner.new('Regina George', 'Heiress')
    mustang = owner.buy('1967 Green Ford Mustang')
    model_t = owner.buy('1942 Black Ford Model-T')
    telsa = owner.buy('2021 Orange Tesla Model-S')

    assert_equal [mustang, model_t], owner.vintage_cars
  end
end
