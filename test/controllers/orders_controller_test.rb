require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get orders_path
    assert_redirected_to new_order_path
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "creates an order" do
    assert_difference -> { Order.count } do
      post orders_url, params: { order: { girl_name: "Susie", samoas: 1 } }
    end

    order = Order.last
    assert_equal "Susie", order.girl_name
    assert_equal 1, order.samoas

    assert_redirected_to new_order_url
  end

  test "missing name does not create an order" do
    assert_no_difference -> { Order.count } do
      post orders_url, params: { order: { girl_name: "" } }
    end

    assert_response :success
  end
end
