require 'test_helper'

class TagTest < ActiveSupport::TestCase

  fixtures :menu_items
  fixtures :tags

  def setup
    @menu_item = menu_items(:elotes)
    @tag = tags(:gluten_free)
  end

  test "not valid without a name or menu_item_id" do
    tag = Tag.create(description: "No wheat products included in item")
    assert_not tag.valid?
  end

  test "tags belong to a menu item" do
    assert_equal @tag.menu_item, @menu_item
  end

end
