require 'test_helper'

class RpgsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get process_gold" do
    get :process_gold
    assert_response :success
  end

end
