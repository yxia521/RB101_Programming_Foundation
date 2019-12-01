# Sum of Sums
# Write a method that takes an Array of numbers and then returns the sum of the sums 
# of each leading subsequence for that Array. You may assume that the Array always 
# contains at least one number.

# algorithm:
# create sub range for each leading subsequen: 3; 3,5; 3,5,2;
#   - iterate through array, sum of all elements every time added a new element
#   - save each sum to a sum of Array
# count the sum of this sum Array 

def sum_of_sums(arr)
  sum_arr = []
  sub_arr = []
  arr.each do |el|
    sub_arr << el
    sum_arr << sub_arr.sum
  end
  p sum_arr.sum
end

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

### ls sol ###

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end

# Integer#upto, iterates the given block, passing in integer value from integer up to
# and including the limit, return integer itself.
