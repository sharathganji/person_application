require 'test_helper'

class PersonControllerTest < ActionDispatch::IntegrationTest
  test "should get create_records" do
    get person_create_records_url
    assert_response :success
  end

  test "should get get_person_records" do
    get person_get_person_records_url
    assert_response :success
  end

  test "should get get_statistics" do
    get person_get_statistics_url
    assert_response :success
  end

  test "should get delete_records" do
    get person_delete_records_url
    assert_response :success
  end

end
