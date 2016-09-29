def stringy(string_length)
  string = '1'
  loop do
    break if string_length == 1
    string.size.odd? ? string << '0' : string << '1'
    string_length -= 1
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'