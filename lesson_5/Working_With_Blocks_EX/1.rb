[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end

# 1
# 3

#=> [[1, 2], [3, 4]]

#Line Action              Object            Side Effect                  Return Value                     Is Return Value Used?
#1    method call (each)  The outer array   None                         The calling object               No, but shown on line 6
#1-3  block execution     Each sub-array    None                         nil                              No
#2    method call (first) Each sub-array    None                         Element at index 0 of sub-array  Yes, used by puts
#2    method call (puts)  Element at index  Outputs string               nil                              Yes, used to determine 
#                         0 of sub-array    representation of an Integer                                  return value of block

# The Array#each method is being called on the multi-dimensional array [[1, 2], [3, 4]]. 
# Each inner array is passed to the block in turn and assigned to the local variable arr. 
# The Array#first method is called on arr and returns the object at index 0 of the current array 
# - in this case the integers 1 and 3, respectively. 
# The puts method then outputs a string representation of the integer. puts returns nil and, 
# since this is the last evaluated statement within the block, the return value of the block is therefore nil. 
# each doesn't do anything with this returned value though, and since the return value of each is the calling object 
# - in this case the nested array [[1, 2], [3, 4]] - this is what is ultimately returned.
