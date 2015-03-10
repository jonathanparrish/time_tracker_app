require 'test_helper'

class DevelopersControllerTest < ActionController::TestCase
  setup do
    @developer = developers(:one)
  end

  test "should get developer index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:developers)
  end

  test "get new" do
    get :new
    assert_response :success
  end

  test "developer can be created" do
    assert_difference('Developer.count') do
      post :create, developer: { email: @developer.email, name:@developer.name, password_digest: @developer.password_digest }
    end
    assert_redirected_to developer_path(assigns(:developer))
  end

  test "show the developer" do
    get :show, id: @developer
    assert_response :success
  end

  test "developer can be updated" do
    patch :update, id: @developer, developer: { email: @developer.email, name:@developer.name, password_digest: @developer.password_digest }
    assert_redirected_to developer_path(assigns(:developer))
  end

  test "developer can be destroyed" do
    assert_difference('Developer.count', -1) do
      delete :destroy, id: @developer
    end
    assert_redirected_to developers_path
  end

  test "developer can be edited" do
    get :edit, id: @developer
    assert_response :success
  end
end
