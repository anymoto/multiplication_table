#!/usr/bin/env ruby
require './lib/multiplication_table'

size = ARGV.first.to_i

# Default size is 10 if input is not present or valid
if size < 1
  puts 'Quantity is not present or valid. Going to use the default that is 10 instead.'
  size = 10
end

m = MultiplicationTable.new(size)
m.create
table = m.matrix

puts "The multiplication table for the first #{ size } prime numbers is:"
# Creates an array with the column headers and prints it before printing the matrix
headings = Array.new m.numbers
puts headings.unshift('X').join(' ')

table.each_with_index do |item, index|
  # Adds a prime number at the beginning of the row
  puts "#{ m.numbers[index] } #{ item.join(' ') }"
end
