require 'minitest/autorun'
require './lib/prime_number'

class TestPrimeNumber < Minitest::Unit::TestCase
  def test_prime_numbers_are_retrieved
    assert_equal [2, 3, 5, 7, 11, 13], PrimeNumber.retrieve(6)
  end
end
