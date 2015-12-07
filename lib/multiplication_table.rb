require './lib/prime_number'

class MultiplicationTable
  attr_reader :matrix, :numbers

  def initialize(size)
    # Gets the first N prime numbers
    @numbers = PrimeNumber.retrieve size
    @size = size
  end

  def create
    @matrix = []

    # Fills the matrix
    for i in 0..(@size - 1)
      @matrix[i] = []
      # Each row will contain a set of products
      for j in 0..(@size - 1)
        @matrix[i][j] = @numbers[i] * @numbers[j]
      end
    end
  end
end
