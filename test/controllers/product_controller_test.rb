require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get create_records" do
    get product_create_records_url
    assert_response :success
  end

  test "should get get_records" do
    get product_get_records_url
    assert_response :success
  end

  test "should get delete_records" do
    get product_delete_records_url
    assert_response :success
  end

end
