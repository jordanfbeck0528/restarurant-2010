require 'minitest/autorun'
require 'minitest/pride'
require './lib/restaurant'
class RestaurantTest < Minitest::Test

  def setup
    @restaurant1 = Restaurant.new('10:00', 'Fuel Cafe')
    @restaurant2 = Restaurant.new('16:00', 'Il Poggio')
  end

  def test_it_exists_and_has_attributes
    assert_instance_of Restaurant, @restaurant1
    assert_equal "10:00", @restaurant1.opening_time
    assert_equal "Fuel Cafe", @restaurant1.name
    assert_equal [], @restaurant1.dishes
  end

  def test_closing_time
    assert_equal "18:00", @restaurant1.closing_time(8)
    assert_equal "23:00", @restaurant2.closing_time(7)
  end

  def test_add_dishes
    @restaurant2.add_dish('Burrata')
    @restaurant2.add_dish('Pizzetta')
    @restaurant2.add_dish('Ravioli')

    assert_equal ["Burrata", "Pizzetta", "Ravioli"], @restaurant2.dishes
  end
end
