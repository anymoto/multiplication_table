require 'minitest/autorun'
require './lib/integer'

class TestInteger < Minitest::Unit::TestCase
  def test_non_prime_number_returns_false
    assert_equal false, 6.is_prime?
  end

  def test_prime_number_returns_true
    assert_equal true, 7.is_prime?
  end
end
