require 'test_helper'

class SubSectionsControllerTest < ActionController::TestCase
  setup do
    @sub_section = sub_sections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_sections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_section" do
    assert_difference('SubSection.count') do
      post :create, sub_section: { complete: @sub_section.complete, section_id: @sub_section.section_id, time_completed: @sub_section.time_completed, time_estimate: @sub_section.time_estimate, title: @sub_section.title }
    end

    assert_redirected_to sub_section_path(assigns(:sub_section))
  end

  test "should show sub_section" do
    get :show, id: @sub_section
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_section
    assert_response :success
  end

  test "should update sub_section" do
    patch :update, id: @sub_section, sub_section: { complete: @sub_section.complete, section_id: @sub_section.section_id, time_completed: @sub_section.time_completed, time_estimate: @sub_section.time_estimate, title: @sub_section.title }
    assert_redirected_to sub_section_path(assigns(:sub_section))
  end

  test "should destroy sub_section" do
    assert_difference('SubSection.count', -1) do
      delete :destroy, id: @sub_section
    end

    assert_redirected_to sub_sections_path
  end
end
