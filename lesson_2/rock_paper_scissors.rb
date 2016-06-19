VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(input)
  puts "=> #{input}"
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

  if (user_choice == 'rock' && computer_choice == 'scissors') ||
      (user_choice == 'scissors' && computer_choice == 'paper') ||
      (user_choice == 'paper' && computer_choice == 'rock')
    prompt "You won!"
  elsif(user_choice == 'rock' && computer_choice == 'paper') ||
      (user_choice == 'scissors' && computer_choice == 'rock') ||
      (user_choice == 'paper' && computer_choice == 'scissors')
    prompt "Computer won!"
  else
    prompt "It's a tie"
  end

  prompt("Do you want to play again? y) yes, n) no")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing, good bye!")