require './lib/prime_number'

class MultiplicationTable
  attr_reader :matrix

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

      # First column should have the N primes
      # so, a prime number is appended to the front
      # of each new row
      @matrix[i][0] = @numbers[i]

      # Each row will contain a set of products
      for j in 1..(@size)
        @matrix[i][j] = @numbers[i] * @numbers[j - 1]
      end
    end
  end

  def display
    headings = Array.new @numbers

    # Adds a row to the beginning of the matrix because
    # first row should have the N primes
    @matrix.unshift(headings.unshift('X'))

    # Prints each row as a string
    @matrix.each do |item|
      puts item.join(' ')
    end
  end
end
