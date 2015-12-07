require 'minitest/autorun'
require './lib/multiplication_table'

class TestMultiplicationTable < Minitest::Unit::TestCase
  def setup
    @table = MultiplicationTable.new 2
    @table.create
  end

  def test_matrix_has_prime_numbers
    assert_equal [[4, 6], [6, 9]] , @table.matrix
  end
end
