def sum(input_i)
  # middle = []
  # result = []
  # loop do
  #   middle = input_i.divmod(10)
  #   result.unshift(middle[1])
  #   input_i = middle[0]
  #   break if middle[0] == 0
  # end
  # result.reduce(:+)
  input_i.to_s.chars.map(&:to_i).reduce(:+)
end


puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

puts sum(23)
puts sum(496)
puts sum(123_456_789)