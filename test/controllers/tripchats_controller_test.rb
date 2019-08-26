require 'test_helper'

class TripchatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tripchats_index_url
    assert_response :success
  end

end
