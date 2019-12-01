# Grocery List
# Write a method which takes a grocery list (array) of fruits with 
# quantities and converts it into an array of the correct number of 
# each fruit

# input 
#  - nested array
#   - subarray: string as the fruit name, integer as the count
# output:
#   - a new array
# rules:
#   - print out the fruit name the same times as the count says
# algo:
#   1. get the nested array
#   2. initialize a new empty array
#   3. iterate this nested array
#   4. integer.times { new_arr << fruit name }
#   5. return the new array

# def buy_fruit(array)
#   initialize a new empty array []
#   iterate thru this nested array. map 
#     subarray.last.times {new_arr << subarray.first} 
#   end
#   result
# end

def buy_fruit(array)
  result = []
  array.map do |subarray|
    subarray.last.times { result << subarray.first }
  end
  p result
end

### ls sol ###
def buy_fruit(array)
  array.map {|fruit, quantity| [fruit] * quantity }.flatten
  
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]
