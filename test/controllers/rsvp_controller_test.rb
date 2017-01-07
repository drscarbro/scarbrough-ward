require 'test_helper'

class RsvpControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select "title", "RSVP | Scarbrough-Ward"
  end
end
