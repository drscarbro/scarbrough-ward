require 'test_helper'

class RsvpControllerTest < ActionController::TestCase
  test "should get indeex" do
    get :indeex
    assert_response :success
  end

end
