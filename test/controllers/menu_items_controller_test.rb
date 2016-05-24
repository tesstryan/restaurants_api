class MenuItemsControllerTest < ActionController::TestCase

  def setup
    @client = Client.create(company: "Fooda")
    @restaurant = restaurants(:taco_joint)
    @menu_item = menu_items(:elotes)
    @credentials = ActionController::HttpAuthentication::Token.encode_credentials("#{@client.access_token}")
  end

  test "should get a 401 without an access token" do
    get :index, restaurant_id: @restaurant.id
    assert_response :unauthorized
  end

  test "should get restaurant's menu items" do
    request.env['HTTP_AUTHORIZATION'] = @credentials
    get :index, restaurant_id: @restaurant.id
    assert_includes response.body, @menu_item.name
  end

end
