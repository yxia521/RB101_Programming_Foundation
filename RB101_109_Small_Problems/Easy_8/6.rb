# fizzbuzz
# Write a method that takes two arguments: the first is the starting 
# umber, and the second is the ending number. Print out all numbers 
# between the two numbers, except if a number is divisible by 3, 
# print "Fizz", if a number is divisible by 5, print "Buzz", and 
# finally if a number is divisible by 3 and 5, print "FizzBuzz".

# algorithm:
# input 2 numbers
#   - this 2 numbers forms a range, iterate over the range using each
#     - print number 
#     - print "Fizz" if %3 == 0
#     - print "Buzz" if %5 == 0
#     - print "FizzBuzz" if  %3 == 0 && %5 == 0

def fizzbuzz(start_num, end_num)
  new_arr = []
  (start_num..end_num).each do |num|
    case 
    when (num % 3 == 0) && (num % 5 == 0)
      new_arr << "FizzBuzz"
    when num % 5 == 0
      new_arr << "Buzz"
    when num % 3 == 0 
      new_arr << "Fizz" 
    else
      new_arr << num
    end
  end
  puts new_arr.join(', ')
end
fizzbuzz(1, 15) 
#=> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

### ls sol ###
def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  puts result.join(', ')
end

def fizzbuzz_value(number)
  case
  when number % 3 == 0 && number % 5 == 0
    'FizzBuzz'
  when number % 5 == 0
    'Buzz'
  when number % 3 == 0
    'Fizz'
  else
    number
  end
end

# Another thing of interest is that there isn't anything other than that 
# case statement in fizzbuzz_value method. This works because a case 
# statement returns the value from the last line of the matched when branch. 
# For example, if a number is divisible only by 3, then 'fizz' is returned 
# from the case statement. That return value then acts as the return value 
# for the method, since there are no other lines after this case statement.
