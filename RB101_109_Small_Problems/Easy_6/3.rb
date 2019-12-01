# Fibonacci Number Location By Length
# The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that 
# the first 2 numbers are 1 by definition, and each subsequent number is 
# the sum of the two previous numbers. 

# calculates and returns the index of the first Fibonacci number that 
# has the number of digits specified as an argument. (The first Fibonacci number has index 1.)
# You may assume that the argument is always greater than or equal to 2.

# conditional to verify if it has the number of digits: integer / 10** != 0 
=begin
2 -> 10**1
3 -> 10**2
10 -> 10**9
1000 -> 10**999
10000 -> 10**9999
=ends

def find_fibonacci_index_by_length(digits)
  first = 1
  second = 1 
  index_count = 2
  loop do
    index_count += 1
    fibonacci = first + second

    first = second # in new pair, the first number is the second number of last pair
    second = fibonacci # the second number is the fibonacci(sum of last pair) of last pair
    break if fibonacci / (10**(digits-1)) != 0 # OR fibonacci.to_s.size >= digits
  end
  index_count
end

p find_fibonacci_index_by_length(2) #==7 # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) #== 12 # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
p find_fibonacci_index_by_length(100) #== 476
p find_fibonacci_index_by_length(1000) #== 4782
p find_fibonacci_index_by_length(10000) #== 47847
