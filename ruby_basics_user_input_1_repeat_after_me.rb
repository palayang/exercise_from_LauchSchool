loop do
  puts ">> Type anything you want('x' to quit):"
  user_inputs = gets.chomp
  puts ">> " + user_inputs
  break if user_inputs == 'x'
end