require 'test_helper'

class ProformasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get proformas_index_url
    assert_response :success
  end

  test "should get show" do
    get proformas_show_url
    assert_response :success
  end

  test "should get new" do
    get proformas_new_url
    assert_response :success
  end

  test "should get edit" do
    get proformas_edit_url
    assert_response :success
  end

  test "should get delete" do
    get proformas_delete_url
    assert_response :success
  end

end
