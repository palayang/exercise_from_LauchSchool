Kernel.puts("welcome to calculator!")
Kernel.puts("please input first number: ")
number1 = Kernel.gets().chomp()

Kernel.puts("please input second number: ")
number2 = Kernel.gets().chomp()

Kernel.puts("please choose operation you want: 1) add 2) substract 3) mutiply 4) divide")
operation = Kernel.gets().chomp()
if operation == '1'
	result = number1.to_i() + number2.to_i()
elsif operation == '2'
	result = number1.to_i() - number2.to_i()
elsif operation == '3'
	result = number1.to_i() * number2.to_i()
else
	result = number1.to_f() / number2.to_i()
end

Kernel.puts("the result is #{result}")