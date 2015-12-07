Integer.class_eval do
  def is_prime?
    return false if self < 2

    (2..Math.sqrt(self).to_i).none?{ |i| self % i == 0 }
  end
end
