# Sum of Digits
# Write a method that takes one argument, a positive integer, and returns the sum of its digits.
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

def sum(integer)
  integer.to_s.chars.map(&:to_i).inject(:+)
end
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
