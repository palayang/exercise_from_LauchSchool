Local Variables
1. Because variable str in loop block reassigned to 2. 
   Outer scope variables can be accessed by inner scope
2. Inner scope variables cannot be accessed in outer scope
3. It can run if str is initailized before loop block.
   It can not run if str is not initailized before loop block.
4. Because the method a_method has no parameter definition.
5. Methods can't access variables in another scope
   Because in question 4, there is no str initialized, and in question 5, 
   there is a str initialized.
   They are not the same variable.
   They don't share the same scope.
6. Because "hi" return a new object to variable a, so b still initialized to 
   "hello"
7. 2 objects and 4 variables, objects are "hello" and "world", variables are
   a, b, c, d
Mutating Method Arguments
1. Because param + " world" returns new object, it did not change variable greeting.
2. Because param << " world" returns param, it changed variable param
3. Because "hi" returns new object to param, so it did not change the variable greeting.
   The param << " world" changed the new object.
4. Because param + "greeting" returns new object.
Working with Collections
1. The method will return a new array,and each value a return value from
    the original array through the modification in the block.
2. The method will return a new array, and it checks each value from 
    the original array in the block, if it is true, add it to the return array.
3. The first line of code will not change the variable n's value,
   but the second line of code will change the variable n's value.
   The first line of code is the preferred option because we don't have to change
   variable n's value, we just need the return value.
4. Because map use the return value from the block, and n > 2 returns boolean value.
5. There are nils in the arr. Because puts method return nil.
6. arr is [1,2,3] because for each value choose from [1, 2, 3] to n, n+2 returns true, 
   so every value will be selected.
7. arr is [] because for each value choose from [1,2,3] to n, puts method always return nil, not true
   , so no value will be selected.
# def find_prime(min_num, max_num)
#   number = min_num
#   prime_numbers = []
#   #from min_num to max_num check number if it's prime,
#   #if it is prime, add it into prime_nu mbers
#   loop  do
#     break if number > max_num
  
#     (2..number).each do |num|
#       break if number % num == 0 && num < number
#       if num == number
#         prime_numbers << number
#       end
#     end
#     number += 1
#   end 

#   return prime_numbers
# end

# p find_prime(3, 20) # => 5, 7



# def reverse_string(input)
#   pick_position = input.size
#   output = ""
#   loop do
#     output += input[ pick_position - 1 ]
#     pick_position -= 1
#     break if pick_position == 0
#   end
#   output
# end

# revered_string = reverse_string("hello")
# p revered_string

# def check_peren(string)
#   counter = 0
#   string.split(//).each do |word|
#     counter += 1 if word == "("
#     counter -= 1 if word == ")"
#     return false if counter < 0
#   end
#   if counter > 0
#     return false
#   else
#     return true
#   end
# end

# p check_peren("((()))())(")