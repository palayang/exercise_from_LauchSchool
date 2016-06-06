require 'yaml'



MESSAGES = YAML.load_file('calculator_messages.yml')

LANGUAGE = 'en'

def messages(message, lan)
  MESSAGES[lan][message]
end

def prompt(key, variable = '')
  message = messages(key, LANGUAGE) % [variable]
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

# def integer?(input)
#   Integer(input) rescue false
# end

# def integer?(input)
#   /^\d+$/.match(input)
# end

def integer?(input)
  Integer(input) rescue false
end

def number?(input)
  integer?(input) || float?(input)
end

# def float?(input)
#   input.to_f.to_s == input
# end

# def float?(input)
#   /\d/.match(input) && /^\d*\.?\d*$/.match(input)
# end

def float?(input)
  Float(input) rescue false
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

prompt('welcome')

name = ''
loop do
  name = Kernel.gets.chomp
  if name.empty?
    prompt("input_name")
  else
    break
  end
end

prompt("hello_name", name)

loop do #main loop
  number1 = ''
  loop do
    prompt("input_number1")
    number1 = Kernel.gets().chomp()

    if number?(number1)
      break
    else
      prompt("error_number")
    end
  end
  number2 = ''
  loop do
    prompt("input_number2")
    number2 = Kernel.gets().chomp()
    if number?(number2)
      break
    else
      prompt("error_number")
    end
  end

  prompt("operator_message")

  operation = ''
  loop do
    operation = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operation)
      break
    else
      prompt("error_operator")
    end
  end

  prompt("operating", operator_to_message(operation))
  result = case operation
           when '1'
             number1.to_f() + number2.to_f()
           when '2'
             number1.to_f() - number2.to_f()
           when '3'
             number1.to_f() * number2.to_f()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("result")
  prompt("continue")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("ending")
