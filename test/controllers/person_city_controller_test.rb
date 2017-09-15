require 'test_helper'

class PersonCityControllerTest < ActionDispatch::IntegrationTest
  test "should get create_record_person_city" do
    get person_city_create_record_person_city_url
    assert_response :success
  end

end
