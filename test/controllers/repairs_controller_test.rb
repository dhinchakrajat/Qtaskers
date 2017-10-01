require 'test_helper'

class RepairsControllerTest < ActionController::TestCase
  setup do
    @repair = repairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:repairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create repair" do
    assert_difference('Repair.count') do
      post :create, repair: { ac: @repair.ac, geyser: @repair.geyser, houseWiring: @repair.houseWiring, invertor: @repair.invertor, laptop: @repair.laptop, lights: @repair.lights, refrigerator: @repair.refrigerator, shopkeeper_id: @repair.shopkeeper_id, tv: @repair.tv, washingMachine: @repair.washingMachine }
    end

    assert_redirected_to repair_path(assigns(:repair))
  end

  test "should show repair" do
    get :show, id: @repair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @repair
    assert_response :success
  end

  test "should update repair" do
    patch :update, id: @repair, repair: { ac: @repair.ac, geyser: @repair.geyser, houseWiring: @repair.houseWiring, invertor: @repair.invertor, laptop: @repair.laptop, lights: @repair.lights, refrigerator: @repair.refrigerator, shopkeeper_id: @repair.shopkeeper_id, tv: @repair.tv, washingMachine: @repair.washingMachine }
    assert_redirected_to repair_path(assigns(:repair))
  end

  test "should destroy repair" do
    assert_difference('Repair.count', -1) do
      delete :destroy, id: @repair
    end

    assert_redirected_to repairs_path
  end
end
