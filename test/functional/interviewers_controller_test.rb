require 'test_helper'

class InterviewersControllerTest < ActionController::TestCase
  setup do
    @interviewer = interviewers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interviewers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interviewer" do
    assert_difference('Interviewer.count') do
      post :create, interviewer: { email: @interviewer.email, name: @interviewer.name, role: @interviewer.role }
    end

    assert_redirected_to interviewer_path(assigns(:interviewer))
  end

  test "should show interviewer" do
    get :show, id: @interviewer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interviewer
    assert_response :success
  end

  test "should update interviewer" do
    put :update, id: @interviewer, interviewer: { email: @interviewer.email, name: @interviewer.name, role: @interviewer.role }
    assert_redirected_to interviewer_path(assigns(:interviewer))
  end

  test "should destroy interviewer" do
    assert_difference('Interviewer.count', -1) do
      delete :destroy, id: @interviewer
    end

    assert_redirected_to interviewers_path
  end
end
