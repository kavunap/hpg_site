require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get discount" do
    get services_discount_url
    assert_response :success
  end

  test "should get shipping" do
    get services_shipping_url
    assert_response :success
  end

  test "should get motor_loan" do
    get services_motor_loan_url
    assert_response :success
  end

end
