# Multiply Lists
# Write a method that takes two Array arguments in which each Array contains 
# a list of numbers, and returns a new Array that contains the product of 
# each pair of numbers from the arguments that have the same index. You may assume 
# that the arguments contain the same number of elements.

def multiply_list(arr1, arr2)
  new_arr = []
  arr1.each_with_index do |num, index| 
    new_arr << num * arr2[index] 
  end
  p new_arr
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Further Exploration
# Array#zip method can be used to produce an extremely compact solution to this 
# method. come up with a one line solution (not counting the def and end lines).
def multiply_list(arr1, arr2)
  arr1.zip(arr2).map{|sub_arr| sub_arr.inject(:*)}
end

# arr1.zip(arr2) => [[3, 9], [5, 10], [7, 11]] 

# zip converts any arguments to arrays, then merge elements of self with 
# corresponding from each argument
# the size of return array:
# how many elements?
#   - the size of each sub_arr
# how many elements in each sub_arr?
#   - the total number of arrays you merged
