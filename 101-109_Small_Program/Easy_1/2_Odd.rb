def is_odd?(input_i)
  #input_i % 2 == 1? true : false 
  
  #remainder = input_i.remainder(2)
  #remainder == 1 || remainder == -1? true : false

  input_i.remainder(2).abs == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false