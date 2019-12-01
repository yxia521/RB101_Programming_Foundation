# Reversed Arrays (Part 1)
# takes an Array as an argument, and reverses its elements in place; that is, 
# mutate the Array passed into this method. The return value should be the same Array object.

# my sol
def reverse!(array)
  index_up = 0
  index_down = -1
  # if array == []
  #   []
  # else
    loop do
      array[index_up], array[index_down] = array[index_down], array[index_up]
      index_up += 1
      index_down -= 1
    break if index_up + 1 > array.size / 2
    end
  # end
  array
end

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

# this case is gonna be false, bc in loop do, line 13 will be executed anyway
# line 13 will transfters [] to: [nil, nil], the result will [nil], instead of []
# How we can fix? 
# Add if else clause to consider [] as a edge case
# OR use while...end
list = [] 
reverse!(list) == []
list == []


### ls sol ###
# if list is [], the line exchanging values will not be executed
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
