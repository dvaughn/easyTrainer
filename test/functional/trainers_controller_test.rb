require 'test_helper'

class TrainersControllerTest < ActionController::TestCase
  test "should get splash" do
    get :splash
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
