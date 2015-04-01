require 'test_helper'

class ContentModulesControllerTest < ActionController::TestCase
  setup do
    @content_module = content_modules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_modules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_module" do
    assert_difference('ContentModule.count') do
      post :create, content_module: { subtitle: @content_module.subtitle, title: @content_module.title }
    end

    assert_redirected_to content_module_path(assigns(:content_module))
  end

  test "should show content_module" do
    get :show, id: @content_module
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_module
    assert_response :success
  end

  test "should update content_module" do
    put :update, id: @content_module, content_module: { subtitle: @content_module.subtitle, title: @content_module.title }
    assert_redirected_to content_module_path(assigns(:content_module))
  end

  test "should destroy content_module" do
    assert_difference('ContentModule.count', -1) do
      delete :destroy, id: @content_module
    end

    assert_redirected_to content_modules_path
  end
end
