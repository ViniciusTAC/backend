require "test_helper"

class SubTasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_task = sub_tasks(:one)
  end

  test "should get index" do
    get sub_tasks_url, as: :json
    assert_response :success
  end

  test "should create sub_task" do
    assert_difference("SubTask.count") do
      post sub_tasks_url, params: { sub_task: { description: @sub_task.description, finished: @sub_task.finished } }, as: :json
    end

    assert_response :created
  end

  test "should show sub_task" do
    get sub_task_url(@sub_task), as: :json
    assert_response :success
  end

  test "should update sub_task" do
    patch sub_task_url(@sub_task), params: { sub_task: { description: @sub_task.description, finished: @sub_task.finished } }, as: :json
    assert_response :success
  end

  test "should destroy sub_task" do
    assert_difference("SubTask.count", -1) do
      delete sub_task_url(@sub_task), as: :json
    end

    assert_response :no_content
  end
end
