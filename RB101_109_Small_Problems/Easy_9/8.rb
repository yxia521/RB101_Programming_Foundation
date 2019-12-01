# Sequence Count
# Create a method that takes two integers as arguments. The first argument 
# s a count, and the second is the first number of a sequence that your 
# method will create. The method should return an Array that contains the 
# same number of elements as the count argument, while the values of each 
# element will be multiples of the starting number.

# You may assume that the count argument will always have a value of 0 or 
# greater, while the starting number can be any integer value. If the count
# is 0, an empty list should be returned.

# input
#   - count
#   - integer number 
# output:
#   - a new Array
# rules:
#   - outputs count number of numbers starting from this integer
#   - first integer *1, first integer *2, first integer*3,etc
# algo:
#   1. get a count, and an integer
#   2. initialize an empty Array
#   3. initialize variable times as a factor count
#   4. iterate thru by times
#   5. in each iteration, put the integer * times into the new array
#   6. in each iteration, increment times by 1
#   7. return the new array

def sequence(count, integer)
  new_arr = []
  times = 1
  count.times do 
    new_arr << integer * times
    times += 1
  end
  p new_arr
end

### ls sol ###
def sequence(count, integer)
  p (1..count).map { |value| integer * value }
end

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
sequence(0, -11) == []
