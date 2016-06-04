def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operator_to_message(op)
  case op
  when '1'
    "Adding"
  when '2'
    "Substracting"
  when '3'
    "multiplying"
  when '4'
    "dividing"
  end
end

prompt("welcome to calculator! please input your name: ")

name = ''
loop do
  name = Kernel.gets.chomp
  if name.empty?
    prompt("please input your name: ")
  else
    break
  end
end

prompt("hello #{name}")

loop do #main loop
  number1 = ''
  loop do
    prompt("please input first number: ")
    number1 = Kernel.gets().chomp()

    if valid_number?(number1)
      break
    else
      prompt("Hmm... htat doesn't look like a valid number")
    end
  end
  number2 = ''
  loop do
    prompt("please input second number: ")
    number2 = Kernel.gets().chomp()
    if valid_number?(number2)
      break
    else
      prompt("Hmm... htat doesn't look like a valid number")
    end
  end

  operator_message = <<-M
    what operation would you like to perform?
    1) add
    2) substract
    3) multiply
    4) divide
  M

  prompt(operator_message)

  operation = ''
  loop do
    operation = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("please input number for 1 or 2 or 3 or 4.")
    end
  end

  prompt("#{operator_to_message(operation)} the two numbers... ")
  result = case operation
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_i()
           end

  prompt("the result is #{result}")
  prompt("do you want do another calculation? y) calculate again")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("thanks for using this calculator")
