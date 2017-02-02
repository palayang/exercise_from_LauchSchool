#puts "Teddy is #{(20...200).to_a.sample} years old!"
name = "Teddy"
puts "Please input a name: "
input_name = gets.chomp
name = input_name if input_name != ""
puts "#{name} is #{rand(20...200)} years old!"

#Teddy is 69 years old!