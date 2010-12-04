require 'test_helper'

class ResidencesControllerTest < ActionController::TestCase
  setup do
    @residence = residences(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:residences)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create residence" do
    assert_difference('Residence.count') do
      post :create, :residence => @residence.attributes
    end

    assert_redirected_to residence_path(assigns(:residence))
  end

  test "should show residence" do
    get :show, :id => @residence.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @residence.to_param
    assert_response :success
  end

  test "should update residence" do
    put :update, :id => @residence.to_param, :residence => @residence.attributes
    assert_redirected_to residence_path(assigns(:residence))
  end

  test "should destroy residence" do
    assert_difference('Residence.count', -1) do
      delete :destroy, :id => @residence.to_param
    end

    assert_redirected_to residences_path
  end
end
