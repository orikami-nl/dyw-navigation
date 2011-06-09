require 'test_helper'

module DywNavigation
  class NavBoxesControllerTest < ActionController::TestCase
    setup do
      @nav_box = nav_boxes(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:nav_boxes)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create nav_box" do
      assert_difference('NavBox.count') do
        post :create, nav_box: @nav_box.attributes
      end
  
      assert_redirected_to nav_box_path(assigns(:nav_box))
    end
  
    test "should show nav_box" do
      get :show, id: @nav_box.to_param
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @nav_box.to_param
      assert_response :success
    end
  
    test "should update nav_box" do
      put :update, id: @nav_box.to_param, nav_box: @nav_box.attributes
      assert_redirected_to nav_box_path(assigns(:nav_box))
    end
  
    test "should destroy nav_box" do
      assert_difference('NavBox.count', -1) do
        delete :destroy, id: @nav_box.to_param
      end
  
      assert_redirected_to nav_boxes_path
    end
  end
end
