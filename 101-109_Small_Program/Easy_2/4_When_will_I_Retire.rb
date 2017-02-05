print "What is your age?"
age = gets.to_i

print "At what age would you like to retire?"
retire_hope = gets.to_i

now = Time.now.year
the_rest_of_time = retire_hope - age
retire_at =  now +  the_rest_of_time

puts "It's #{now}. You will retire in #{retire_at}."
puts "You have only #{the_rest_of_time} years of work to go!"

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!