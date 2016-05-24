class RestaurantsControllerTest < ActionController::TestCase

  def setup
    @client = Client.create(company: "Fooda")
    @restaurant = restaurants(:taco_joint)
    @credentials = ActionController::HttpAuthentication::Token.encode_credentials("#{@client.access_token}")
  end

  test "should get a 401 without an access token" do
    get :index
    assert_response :unauthorized
  end

  test "should get restaurant index" do
    request.env['HTTP_AUTHORIZATION'] = @credentials
    get :index
    assert_response :success
  end

  test "should get restaurant show page" do
    request.env['HTTP_AUTHORIZATION'] = @credentials
    get :show, id: @restaurant.id
    assert_response :success
    assert_includes @response.body, @restaurant.name
  end

end
