#!/usr/bin/env ruby
require './lib/multiplication_table'

size = ARGV.first.to_i

if size < 1
  puts 'Quantity is not present or valid. Going to use the default that is 10 instead.'
  size = 10
end

m = MultiplicationTable.new(size)
m.create

puts "The multiplication table for the first #{ size } prime numbers is:"
m.display
