# Fibonacci Numbers (Last Digit)
# In the previous exercise, we developed a procedural method for computing 
# the value of the nth Fibonacci numbers. This method was really fast, 
# computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the last 
# digit of the nth Fibonacci number.


def fibonacci(nth) # much more faster
  first_num, second_num = 1, 1
  3.upto(nth) do
    first_num, second_num = second_num, first_num + second_num
  end
  second_num
end

# --- slow version ---
def fibonacci_last(nth)
  p fibonacci(nth).to_s[-1].to_i
end

# --- faster version ---
def fibonacci_last(nth) # no need to get nth actual number
  last_2 = [1, 1]
  3.upto(nth) do        # only care about the last 2 digits
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end

# To compute the last digit of the nth Fibonacci number, you only need the last 
# digit of the nth - 1 and nth -2 numbers. As a result, you only ever need the 
# last digit of any intermediate result, which eliminates all of the computing 
# effort needed to compute the massive numbers involved. Our second solution 
# does exactly this: it only computes and uses the last digit in each intermediate 
# result, and computes the last digit of the 123,456,789th Fibonacci number 
# in less than a minute.

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
