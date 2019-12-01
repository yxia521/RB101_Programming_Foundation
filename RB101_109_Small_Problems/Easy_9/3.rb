# Always Return Negative
# Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number.

# input
#   - integer: +, -, 0
# output
#   - integer
# algorithm:
#   - determine if the integer is positive, negative, or 0
#   - positive, return its negative equivalent
#   - negateive or 0, return the integer itself

def negative(integer)
  integer > 0 ? -integer : integer
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0
