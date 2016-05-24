require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase

  test "not valid without a name" do
    restaurant = Restaurant.new(description: "Donuts for all!")
    assert_not restaurant.valid?
  end

  test "not valid with rating outside 0 to 5" do
    restaurant = Restaurant.new(name: "Taco Taco", rating: 7)
    assert_not restaurant.valid?
  end

end
