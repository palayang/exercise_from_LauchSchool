#1 original thinking
# def stringy(string_length)
#   string = '1'
#   loop do
#     break if string_length == 1
#     string.size.odd? ? string << '0' : string << '1'
#     string_length -= 1
#   end
#   string
# end

#2 Using Integer#times
# def stringy(size)
#   string = ''
#   size.times do
#     word = string.size.odd? ? '0' : '1'
#     string << word
#   end
#   string
# end

#Further Exploration #1 Using Integer#times block argument
# def stringy(size, set = 1)
#   words = []
#   size.times do |index|
#     index += 1 if set == 0
#     word = index.even? ? 1 : 0
#     words << word
#   end
#   return words.join
# end

#Further Exploration #2 Using two value exchanging process
def stringy(size, digit = 1)
  words = []
  size.times do
    words << digit
    digit = digit == 1 ? 0 : 1
  end
  words.join
end

#loop times is for sure, so use times method.
#pure number vs string number
#Using Array#index is more efficient than using String#size.
#for exchanging two value, see method Further Exploration #2

# puts stringy(6) == '101010'
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

puts stringy(9, 0)
puts stringy(9)
