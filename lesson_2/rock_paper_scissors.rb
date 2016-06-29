VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(input)
  puts "=> #{input}"
end



def return_results(player, computer)
    if (player == 'rock' && computer == 'scissors') ||
      (player == 'scissors' && computer == 'paper') ||
      (player == 'paper' && computer == 'rock')
    return "You won!"
  elsif(player == 'rock' && computer == 'paper') ||
      (player == 'scissors' && computer == 'rock') ||
      (player == 'paper' && computer == 'scissors')
    return "Computer won!"
  else
    return "It's a tie"
  end
end

loop do
  user_choice = ''
  loop do
    prompt("Let's play rock-paper-scissors! Please type #{VALID_CHOICES.join(', ')}:")
    user_choice = gets.chomp

    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("that's not a valid choice~")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("your choice is #{user_choice}, and computer choice is #{computer_choice}")

  result = return_results(user_choice, computer_choice)
  prompt("#{result}")

  prompt("Do you want to play again? y) yes, n) no")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing, good bye!")