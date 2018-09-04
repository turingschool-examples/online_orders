require 'minitest/autorun'
require 'minitest/pride'
require './lib/grubhub_order.rb'

class GrubhubOrderTest < Minitest::Test
  def test_it_exists
    grubhub = GrubhubOrder.new

    assert_instance_of GrubhubOrder, grubhub
  end

  def test_it_provides_confirmation
    grubhub = GrubhubOrder.new

    assert_equal "You got Pizza.", grubhub.confirmation("Pizza")
  end

  def test_it_asks_for_review
    grubhub = GrubhubOrder.new

    assert_equal "Please rate your order within 30 days.", grubhub.review
  end

  def test_it_gives_deliverytime
    grubhub = GrubhubOrder.new

    assert_equal "Your food will arrive in 45-60 minutes.", grubhub.delivery
  end
end
