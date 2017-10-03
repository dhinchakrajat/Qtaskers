require 'test_helper'

class ShopkeepersControllerTest < ActionController::TestCase
  setup do
    @shopkeeper = shopkeepers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shopkeepers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shopkeeper" do
    assert_difference('Shopkeeper.count') do
      post :create, shopkeeper: { ac: @shopkeeper.ac, address: @shopkeeper.address, contact: @shopkeeper.contact, geyser: @shopkeeper.geyser, houseWiring: @shopkeeper.houseWiring, invertor: @shopkeeper.invertor, laptop: @shopkeeper.laptop, lights: @shopkeeper.lights, ownerName: @shopkeeper.ownerName, refrigerator: @shopkeeper.refrigerator, shopName: @shopkeeper.shopName, tv: @shopkeeper.tv, washingMachine: @shopkeeper.washingMachine }
    end

    assert_redirected_to shopkeeper_path(assigns(:shopkeeper))
  end

  test "should show shopkeeper" do
    get :show, id: @shopkeeper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shopkeeper
    assert_response :success
  end

  test "should update shopkeeper" do
    patch :update, id: @shopkeeper, shopkeeper: { ac: @shopkeeper.ac, address: @shopkeeper.address, contact: @shopkeeper.contact, geyser: @shopkeeper.geyser, houseWiring: @shopkeeper.houseWiring, invertor: @shopkeeper.invertor, laptop: @shopkeeper.laptop, lights: @shopkeeper.lights, ownerName: @shopkeeper.ownerName, refrigerator: @shopkeeper.refrigerator, shopName: @shopkeeper.shopName, tv: @shopkeeper.tv, washingMachine: @shopkeeper.washingMachine }
    assert_redirected_to shopkeeper_path(assigns(:shopkeeper))
  end

  test "should destroy shopkeeper" do
    assert_difference('Shopkeeper.count', -1) do
      delete :destroy, id: @shopkeeper
    end

    assert_redirected_to shopkeepers_path
  end
end
