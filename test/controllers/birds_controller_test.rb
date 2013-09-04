require 'test_helper'

class BirdsControllerTest < ActionController::TestCase
  setup do
    @bird = birds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:birds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bird" do
    assert_difference('Bird.count') do
      post :create, bird: { common_english_name: @bird.common_english_name, family: @bird.family, iucn_status: @bird.iucn_status, marathi_name: @bird.marathi_name, order: @bird.order, sanskrit_name: @bird.sanskrit_name, sanskrit_name_description: @bird.sanskrit_name_description, scientific_name: @bird.scientific_name, scientific_name_etymology: @bird.scientific_name_etymology }
    end

    assert_redirected_to bird_path(assigns(:bird))
  end

  test "should show bird" do
    get :show, id: @bird
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bird
    assert_response :success
  end

  test "should update bird" do
    patch :update, id: @bird, bird: { common_english_name: @bird.common_english_name, family: @bird.family, iucn_status: @bird.iucn_status, marathi_name: @bird.marathi_name, order: @bird.order, sanskrit_name: @bird.sanskrit_name, sanskrit_name_description: @bird.sanskrit_name_description, scientific_name: @bird.scientific_name, scientific_name_etymology: @bird.scientific_name_etymology }
    assert_redirected_to bird_path(assigns(:bird))
  end

  test "should destroy bird" do
    assert_difference('Bird.count', -1) do
      delete :destroy, id: @bird
    end

    assert_redirected_to birds_path
  end
end
