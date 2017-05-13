require 'test_helper'

class IndetificationsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
    @indetification = indetifications(:one)
  end

  test "should get index" do
    get :index, params: { client_id: @client }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { client_id: @client }
    assert_response :success
  end

  test "should create indetification" do
    assert_difference('Indetification.count') do
      post :create, params: { client_id: @client, indetification: @indetification.attributes }
    end

    assert_redirected_to client_indetification_path(@client, Indetification.last)
  end

  test "should show indetification" do
    get :show, params: { client_id: @client, id: @indetification }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { client_id: @client, id: @indetification }
    assert_response :success
  end

  test "should update indetification" do
    put :update, params: { client_id: @client, id: @indetification, indetification: @indetification.attributes }
    assert_redirected_to client_indetification_path(@client, Indetification.last)
  end

  test "should destroy indetification" do
    assert_difference('Indetification.count', -1) do
      delete :destroy, params: { client_id: @client, id: @indetification }
    end

    assert_redirected_to client_indetifications_path(@client)
  end
end
