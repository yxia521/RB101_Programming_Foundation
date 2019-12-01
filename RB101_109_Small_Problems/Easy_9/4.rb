# Counting Up
# Write a method that takes an integer argument, and returns an Array of 
# all integers, in sequence, between 1 and the argument.

# You may assume that the argument will always be a valid integer that 
# is greater than 0

# input
#  - positive integer
# output
#  - a new array containg element from 1 up to the integer
# rules
#  - counting number from 1 up to the integer, return a new array
# algorithm:
#  - initialize a new empty array
#  - establish a range from 1 to this integer (1..integer)
#   - iterate thru this range, put each element into the new array
#  - return this new array

def sequence(integer)
  (1..integer).map do |number|
    number 
  end
end

### ls sol ###

def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
