require 'test_helper'

module StatusEngine
  class StatusControllerTest < ActionController::TestCase
    test "should get index" do
      get :index, use_route: :status_engine
      assert_response :success
    end

    test "should contain status and revision" do
      get :index, use_route: :status_engine
      assert_equal response_json["status"], "OK"
      assert_equal response_json["revision"], "0000000000000000000000000000000000000000"
    end

    test "should look into revision file" do
      require 'fakefs/safe'
      FakeFS do
        FileUtils.mkdir_p Rails.root
        File.open Rails.root.join("REVISION"), "w" do |f|
          f.puts "abcdabcdabcdabcdabcdabcdabcdabcdabcdabcd"
        end

        get :index, use_route: :status_engine
        assert_equal response_json["status"], "OK"
        assert_equal response_json["revision"], "abcdabcdabcdabcdabcdabcdabcdabcdabcdabcd"
      end
    end

    private
    def response_json
      JSON.parse response.body
    end
  end
end
