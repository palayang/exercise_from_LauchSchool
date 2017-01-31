def average(input_a)
  input_a.reduce(:+) / (input_a.size*1.0)
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])