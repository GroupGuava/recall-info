require 'test_helper'

class ToysControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
