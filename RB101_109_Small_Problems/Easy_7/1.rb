# Combine Two Lists
# Write a method that combines two Arrays passed in as arguments, and returns 
# a new Array that contains all elements from both Array arguments, 
# with the elements taken in alternation.
# You may assume that both input Arrays are non-empty, and 
# that they have the same number of elements.

def interleave(arr1, arr2)
  new_arr = []

  even_index = 0
  odd_index = 1

  arr1.each do |num|
    new_arr[even_index] = num
    even_index += 2
  end

  arr2.each do |element|
    new_arr[odd_index] = element
    odd_index += 2
  end

  p new_arr
end

# --- ls sol ---

def interleave(arr1, arr2)
  new_arr = []
  arr1.each_with_index{|el, index|
    new_arr << el << arr2[index]
  }
  new_arr
end

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
