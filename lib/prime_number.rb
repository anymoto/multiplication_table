require './lib/integer'

class PrimeNumber
  def self.retrieve(size)
    numbers = []
    n = 2

    while numbers.length < size do
      numbers << n if n.is_prime?
      n += 1
    end

    numbers
  end
end
