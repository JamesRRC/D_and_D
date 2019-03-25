require 'test_helper'

class HirelingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hireling = hirelings(:one)
  end

  test "should get index" do
    get hirelings_url
    assert_response :success
  end

  test "should get new" do
    get new_hireling_url
    assert_response :success
  end

  test "should create hireling" do
    assert_difference('Hireling.count') do
      post hirelings_url, params: { hireling: { class: @hireling.class, name: @hireling.name } }
    end

    assert_redirected_to hireling_url(Hireling.last)
  end

  test "should show hireling" do
    get hireling_url(@hireling)
    assert_response :success
  end

  test "should get edit" do
    get edit_hireling_url(@hireling)
    assert_response :success
  end

  test "should update hireling" do
    patch hireling_url(@hireling), params: { hireling: { class: @hireling.class, name: @hireling.name } }
    assert_redirected_to hireling_url(@hireling)
  end

  test "should destroy hireling" do
    assert_difference('Hireling.count', -1) do
      delete hireling_url(@hireling)
    end

    assert_redirected_to hirelings_url
  end
end
