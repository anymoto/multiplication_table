#!/usr/bin/env ruby
require './lib/multiplication_table'

puts 'How many prime numbers do you want?'
size = gets.to_i

if size < 1
  puts 'This quantity is not valid. Going to use the default that is 10 instead.'
  size = 10
end

m = MultiplicationTable.new(size)
m.create

puts "The multiplication table for the first #{ size } prime numbers is:"
m.display
