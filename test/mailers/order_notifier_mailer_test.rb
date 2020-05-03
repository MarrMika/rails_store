require 'test_helper'

class OrderNotifierMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderNotifierMailer.received(orders(:one))
    assert_equal "Computer Store Order Confirmation", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
  end

  test "shipped" do
    mail = OrderNotifierMailer.shipped(orders(:one))
    assert_equal "Computer Store Order Shipped", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
  end

end
