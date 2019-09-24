# a basic implementation of a Fibonacci calculator, 
# A user passes in two numbers, 
# and the calculator will keep computing the sequence until some limit is reached.


# local variable limit should be within the definition of method,
# since any variables initialized outside of method definition will be not avaliable for the method
# method defines its own, self-contained scope.
def fib(first_num, second_num)
  limit = 15
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"
