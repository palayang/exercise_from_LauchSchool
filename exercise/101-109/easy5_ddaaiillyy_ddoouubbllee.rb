# def crunch(input_s)
#   index = 0
#   output_s = ""
#   loop do
#     output_s << input_s[index] unless input_s[index] == input_s[index+1]
#     index += 1
#     break if index == input_s.size || input_s.size == 0
#   end
#   output_s
# end

# def crunch(input_s)
#   output_s = ""
#   saved_char = ''
#   input_s.each_char do |char|
#     output_s << char unless saved_char == char
#     saved_char = char
#   end
#   output_s
# end

def crunch(input_s)
  
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''