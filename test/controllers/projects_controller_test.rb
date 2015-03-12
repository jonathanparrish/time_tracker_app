require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = projects(:one)
    @developer = developers(:one)
    session[:developer_id] = @developer.id
  end

  test "should get project index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:projects)
  end

  test "get new" do
    get :new
    assert_response :success
  end

  test "project can be created" do
    assert_difference('Project.count') do
      post :create, project: { name:@project.name, hours_allowed: @project.hours_allowed }
    end
    assert_redirected_to project_path(assigns(:project))
  end

  test "show the project" do
    get :show, id: @project
    assert_response :success
  end

  test "project can be updated" do
    patch :update, id: @project, project: { name:@project.name, hours_allowed: @project.hours_allowed }
  end

  test "project can be destroyed" do
    assert_difference('Project.count', -1) do
      delete :destroy, id: @project
    end
    assert_redirected_to projects_path
  end

  test "project can be edited" do
    get :edit, id: @project
    assert_response :success
  end
end
