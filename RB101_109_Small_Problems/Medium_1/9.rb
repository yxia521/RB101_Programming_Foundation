# Fibonacci Numbers (Procedural)
# Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.
# Rewrite your recursive fibonacci method so that it computes its results without recursion.

# 1 1 2 3 5 8 13 21
def fibonacci(nth) # much more faster
  first_num, second_num = 1, 1
  3.upto(nth) do
    first_num, second_num = second_num, first_num + second_num
  end
  second_num
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
# fibonacci(20) == 6765
# fibonacci(100) == 354224848179261915075
# fibonacci(100_001) # => 4202692702.....8285979669707537501
