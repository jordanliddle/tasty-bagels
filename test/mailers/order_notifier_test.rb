require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifier.received(orders(:one))
    assert_equal "Order Confirmation", mail.subject
    assert_equal ["jlaw@capital.com"], mail.to
    assert_equal ["jrdnliddle@gmail.com"], mail.from
  end

  # test "shipped" do
  #   mail = OrderNotifier.shipped(orders(:one))
  #   assert_equal "Your food is en route!", mail.subject
  #   assert_equal ["jrdnliddle@example.org"], mail.to
  #   assert_equal ["tastybagel@example.com"], mail.from
  #   assert_match /<td>1&times;<\/td>\s*<td>valid_sandwich<\/td>/, mail.body.encoded
  # end

end
