# Multiply All Pairs
# Write a method that takes two Array arguments in which each Array contains a 
# list of numbers, and returns a new Array that contains the product of every pair 
# of numbers that can be formed between the elements of the two Arrays. The results 
# should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(arr1, arr2)
 new_arr = []
 arr1.each do |num1|
   arr2.each do |num2|
    new_arr << num1 * num2
   end
 end
 new_arr.sort
end
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# We need to iterate over each element of each array, including duplicates
# To do this, we iterate over each element in the first array, then multiply
# it by each item in the second array.

# keep in mind this NESTED LOGIC
