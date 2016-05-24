require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  fixtures :restaurants
  fixtures :menu_items

  def setup
    @restaurant = restaurants(:taco_joint)
  end

  test "not valid without a name" do
    restaurant = Restaurant.new(description: "Donuts for all!")
    assert_not restaurant.valid?
  end

  test "not valid with rating outside 0 to 5" do
    restaurant = Restaurant.new(name: "Taco Taco", rating: 7)
    assert_not restaurant.valid?
  end

  test "can have menu_items" do
    assert @restaurant.menu_items.count > 0
  end

end
