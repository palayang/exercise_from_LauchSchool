def generate_uuid
  #collection = 0-9 and a-z collection 
  collection = []
  (0..9).each {|num| collection << num.to_s}
  ('a'..'f').each {|char| collection << char}

  #size = [8, 4, 4, 4, 12]
  section = [8, 4, 4, 4, 12]

  #uuid = random output from collection to uuid and match the size between '-' 
  uuid= ""
  section.each_with_index do |variable, index|
    variable.times {uuid += collection.sample}
    uuid += '-' unless index >= section.size - 1
  end

  uuid
end

puts "#{generate_uuid}"