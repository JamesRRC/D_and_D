require 'test_helper'

class HireClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hire_class = hire_classes(:one)
  end

  test "should get index" do
    get hire_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_hire_class_url
    assert_response :success
  end

  test "should create hire_class" do
    assert_difference('HireClass.count') do
      post hire_classes_url, params: { hire_class: { class_description: @hire_class.class_description, class_name: @hire_class.class_name } }
    end

    assert_redirected_to hire_class_url(HireClass.last)
  end

  test "should show hire_class" do
    get hire_class_url(@hire_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_hire_class_url(@hire_class)
    assert_response :success
  end

  test "should update hire_class" do
    patch hire_class_url(@hire_class), params: { hire_class: { class_description: @hire_class.class_description, class_name: @hire_class.class_name } }
    assert_redirected_to hire_class_url(@hire_class)
  end

  test "should destroy hire_class" do
    assert_difference('HireClass.count', -1) do
      delete hire_class_url(@hire_class)
    end

    assert_redirected_to hire_classes_url
  end
end
