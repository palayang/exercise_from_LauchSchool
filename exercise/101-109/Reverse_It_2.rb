def reverse_words(input_string)
  output_array = []
  input_string.split.each do |word|
    if word.chars.count >= 5
      output_array << word.chars.reverse.join
    else
      output_array << word
    end
  end
  output_array.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
