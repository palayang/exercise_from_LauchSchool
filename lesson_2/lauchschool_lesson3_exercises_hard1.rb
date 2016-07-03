def is_a_number?(input_string)
  if input_string =~ /\d/
    return true
  else
    return false
  end
end


#puts is_a_number?("a") # => false
#puts is_a_number?("123") # => true

def dot_seperate_ip_address?(input_string)
  #determine there are 4 dot in input_string
  dot_seperated_words = input_string.split('.')
  return false unless dot_seperated_words.size == 4

  #determine each word is digit or not
  while dot_seperated_words.size > 0
    word = dot_seperated_words.pop
    return false unless is_a_number?(word)
  end

  true
end

puts "#{dot_seperate_ip_address?("4.4.a.4")}"