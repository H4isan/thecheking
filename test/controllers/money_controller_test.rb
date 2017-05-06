require 'test_helper'

class MoneyControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
    @money = money(:one)
  end

  test "should get index" do
    get :index, params: { client_id: @client }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { client_id: @client }
    assert_response :success
  end

  test "should create money" do
    assert_difference('Money.count') do
      post :create, params: { client_id: @client, money: @money.attributes }
    end

    assert_redirected_to client_money_path(@client, Money.last)
  end

  test "should show money" do
    get :show, params: { client_id: @client, id: @money }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { client_id: @client, id: @money }
    assert_response :success
  end

  test "should update money" do
    put :update, params: { client_id: @client, id: @money, money: @money.attributes }
    assert_redirected_to client_money_path(@client, Money.last)
  end

  test "should destroy money" do
    assert_difference('Money.count', -1) do
      delete :destroy, params: { client_id: @client, id: @money }
    end

    assert_redirected_to client_money_index_path(@client)
  end
end
