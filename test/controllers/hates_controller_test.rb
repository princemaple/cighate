require 'test_helper'

class HatesControllerTest < ActionController::TestCase
  setup do
    @hate = hates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hate" do
    assert_difference('Hate.count') do
      post :create, hate: {  }
    end

    assert_redirected_to hate_path(assigns(:hate))
  end

  test "should show hate" do
    get :show, id: @hate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hate
    assert_response :success
  end

  test "should update hate" do
    patch :update, id: @hate, hate: {  }
    assert_redirected_to hate_path(assigns(:hate))
  end

  test "should destroy hate" do
    assert_difference('Hate.count', -1) do
      delete :destroy, id: @hate
    end

    assert_redirected_to hates_path
  end
end
