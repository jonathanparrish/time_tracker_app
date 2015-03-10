require 'test_helper'

class TimeEntriesControllerTest < ActionController::TestCase
  setup do
    @time_entry = time_entries(:one)
  end

  test "should get time_entry index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:time_entries)
  end

  test "get new" do
    get :new
    assert_response :success
  end

  test "time_entry can be created" do
    assert_difference('TimeEntry.count') do
      post :create, time_entry: { hours: @time_entry.hours, worked_on:@time_entry.worked_on, project_id:@time_entry.project_id }
    end
    assert_redirected_to time_entry_path(assigns(:time_entry))
  end

  test "show the time_entry" do
    get :show, id: @time_entry
    assert_response :success
  end

  test "time_entry can be updated" do
    patch :update, id: @time_entry, time_entry: { hours: @time_entry.hours, worked_on:@time_entry.worked_on, project_id:@time_entry.project_id }
  end

  test "time_entry can be destroyed" do
    assert_difference('TimeEntry.count', -1) do
      delete :destroy, id: @time_entry
    end
    assert_redirected_to time_entries_path
  end

  test "time_entry can be edited" do
    get :edit, id: @time_entry
    assert_response :success
  end
end
