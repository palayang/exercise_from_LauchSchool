# def reverse_sentence(a_string)
#   reversed_string = []
#   a_string.split(' ').each do |word|
#     reversed_string.unshift(word)
#   end

#   reversed_string * ' '
# end

def reverse_sentence(a_string)
  a_string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'