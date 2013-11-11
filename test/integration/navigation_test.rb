require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "works well" do
    get "/status_engine/status"
    assert_response :success
    assert response.body.include? "0000000000000000000000000000000000000000"
  end

  test "routed well" do
    assert_raises(ActionController::RoutingError) do
      get "/status_engine/status/hoge"
    end
  end
end
