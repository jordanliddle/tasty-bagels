require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest
  fixtures :products

  # A user goes to the index page. They select a product, adding it to their
  # cart, and check out, filling in their details on the checkout form. When
  # they submit, an order is created containing their information, along with a
  # single line item corresponding to the product they added to their cart.
  
  test "buying a product" do
    LineItem.delete_all
    Order.delete_all
    sandwich = products(:valid_sandwich)

    get "/"
    assert_response :success
    assert_template "index"
    
    xml_http_request :post, '/line_items', product_id: tasty_bagel.id
    assert_response :success 
    
    cart = Cart.find(session[:cart_id])
    assert_equal 1, cart.line_items.size
    assert_equal tasty_bagel, cart.line_items[0].product
    
    get "/orders/new"
    assert_response :success
    assert_template "new"
    
    post_via_redirect "/orders",
                      order: { name:     "Foo Bar",
                               address:  "123 The Street",
                               email:    "jrdnliddle@example.com",
                               pay_type: "Hugs" }
    assert_response :success
    assert_template "index"
    cart = Cart.find(session[:cart_id])
    assert_equal 0, cart.line_items.size
    
    orders = Order.all
    assert_equal 1, orders.size
    order = orders[0]
    
    assert_equal "Foo Bar",      order.name
    assert_equal "123 The Street",   order.address
    assert_equal "jrdnliddle@example.com", order.email
    assert_equal "Hugs",            order.pay_type
    
    assert_equal 1, order.line_items.size
    line_item = order.line_items[0]
    assert_equal tasty_bagel, line_item.product

    mail = ActionMailer::Base.deliveries.last
    assert_equal ["jrdnliddle@example.com"], mail.to
    assert_equal 'Jordan Liddle <tastybagel@example.com>', mail[:from].value
    assert_equal "TastyBagel Order Confirmation", mail.subject
  end
end
