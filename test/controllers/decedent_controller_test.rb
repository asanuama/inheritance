require 'test_helper'

class DecedentControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get decedent_new_url
    assert_response :success
  end

  test "should get create" do
    get decedent_create_url
    assert_response :success
  end

  test "should get show" do
    get decedent_show_url
    assert_response :success
  end

  test "should get edit" do
    get decedent_edit_url
    assert_response :success
  end

  test "should get update" do
    get decedent_update_url
    assert_response :success
  end

  test "should get destory" do
    get decedent_destory_url
    assert_response :success
  end

end
