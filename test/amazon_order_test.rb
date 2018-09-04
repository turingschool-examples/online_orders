require 'minitest/autorun'
require 'minitest/pride'
require './lib/amazon_order.rb'

class AmazonOrderTest < Minitest::Test
  def test_it_exists
    amazon = AmazonOrder.new

    assert_instance_of AmazonOrder, amazon
  end

  def test_it_provides_confirmation
    amazon = AmazonOrder.new

    assert_equal "You got Pizza Pillow.", amazon.confirmation("Pizza Pillow")
  end

  def test_it_asks_for_review
    amazon = AmazonOrder.new

    assert_equal "Please rate your order within 30 days.", amazon.review
  end

  def test_it_gives_deliverytime
    amazon = AmazonOrder.new

    assert_equal "Your order will arrive in 2 business days.", amazon.delivery
  end
end
