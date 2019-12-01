# Does My List Include This?

def include?(array, number)
  array.select do |el| 
    next unless el == number
    return true
  end
  false
end

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false


### ls sol ###
def include?(array, number)
  !!array.find_index(number)
end

# .find_index returns the index of number if it's also in this array
# if yes, return an index, if no, return nil
# !!index returns true, !!nil returns false
