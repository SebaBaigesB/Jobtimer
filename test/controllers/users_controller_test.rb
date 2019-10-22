require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get first_name" do
    get users_first_name_url
    assert_response :success
  end

  test "should get last_name" do
    get users_last_name_url
    assert_response :success
  end

  test "should get email" do
    get users_email_url
    assert_response :success
  end

  test "should get city" do
    get users_city_url
    assert_response :success
  end

  test "should get country" do
    get users_country_url
    assert_response :success
  end

  test "should get job" do
    get users_job_url
    assert_response :success
  end

  test "should get job_title" do
    get users_job_title_url
    assert_response :success
  end

  test "should get hourly_wage:integer" do
    get users_hourly_wage:integer_url
    assert_response :success
  end

  test "should get picture:text" do
    get users_picture:text_url
    assert_response :success
  end

end
