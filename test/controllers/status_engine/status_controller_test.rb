require 'test_helper'

module StatusEngine
  class StatusControllerTest < ActionController::TestCase
    test "should get index" do
      get :index, use_route: :status_engine
      assert_response :success
    end

  end
end
