puts "What is the bill?"
bill = gets.to_i
puts "What is the tip percentage?"
tip_p = gets.to_i/100.0
tip = (bill*tip_p).round(2)
total = bill + tip
puts "The tip is $#{tip}"
puts "The total is $#{total}"




# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0