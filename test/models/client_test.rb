require 'test_helper'

class ClientTest < ActiveSupport::TestCase

  def setup
    @client = Client.create(company: "Fooda")
  end

  test "should not create a client without a company" do
    client = Client.new
    assert_not client.save
  end

  test "an access_token is generated when a client is created" do
    assert_not_nil @client.access_token
  end

  test "access token is 32 alphanumeric characters" do
    assert_equal 32, @client.access_token.length
  end

end
