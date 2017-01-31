def stringy(input_i, input_modify_i = 1)
  input_modify_i == 1 ? switch = true : switch = false
  result_s = ""
  input_i.times do 
    switch ? result_s += '1' : result_s += '0'
    switch ? switch = false : switch = true
  end
  result_s
end

puts stringy(6, 0) == '010101'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'