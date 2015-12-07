require 'minitest/autorun'
require './lib/multiplication_table'

class TestMultiplicationTable < Minitest::Unit::TestCase
  def setup
    @table = MultiplicationTable.new 2
    @table.create
  end

  def test_matrix_has_numbers
    assert_equal [[2, 4, 6], [3, 6, 9]] , @table.matrix
  end

  def test_matrix_is_displayed_with_headings
    assert_equal [["X", 2, 3], [2, 4, 6], [3, 6, 9]], @table.display
  end
end
