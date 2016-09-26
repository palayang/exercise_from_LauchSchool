vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# def count_occurences(array)
# occurence = {}
# array.uniq.each do |count_list|
# occurence[count_list] = array.count(count_list)
# end

# occurence.each do |key, value|
# puts "#{key} => #{value}"
# end
# end

def count_occurences(array)
  occurence = {}
  count_list = []
  array.each do |element|
  if count_list.select {|car| car == element} != []
  occurence[element] = occurence[element] + 1
  else
  count_list << element
  occurence[element] = 1
  end
  end

  occurence.each do |key, value|
  puts "#{key} = > #{value}"
  end
end

count_occurences(vehicles)