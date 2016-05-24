require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase
  fixtures :restaurants

  def setup
    @restaurant = restaurants(:taco_joint)
    @menu_item = MenuItem.create(name: "Chicken Tinga Taco")
  end

  test "not valid without a restaurant id or name" do
    assert_not @menu_item.valid?
  end

  test "valid menu item belongs to a restarant" do
    @menu_item.restaurant_id = @restaurant.id
    @menu_item.save
    assert_equal @menu_item.restaurant, @restaurant
  end

end
