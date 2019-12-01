# Rotation (Part 1)
# Write a method that rotates an array by moving the first element to the 
# end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

# input
#  - array
# output
#  - new array 
# rule:
#  - put the first element of the orignal array to the last
#  - the original array remains unchanged
# algo:
#   1. get the array
#   2. initialize an empty array
#   3. take out the first element, to the new array
#   4. take out the rest of original array, prepend them to new array 

def rotate_array(array)
  new_arr = []
  new_arr << array.first
  new_arr.prepend(array[1..-1])
end

### ls sol ###
def rotate_array(array)
  array[1..-1] + [array[0]]
end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']
