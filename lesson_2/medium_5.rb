def find_factor(number)
  divide = number
  factor = []
  begin
    factor << number / divide if number % divide == 0
    divide -= 1
  end until divide == 0
  p factor
end

puts "input: "
input = gets.chomp.to_i
find_factor input