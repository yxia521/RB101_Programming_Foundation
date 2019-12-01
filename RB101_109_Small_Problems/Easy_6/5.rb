# Reversed Arrays (Part 2)
# takes an Array, and returns a new Array with the elements of the original list in reverse order. 
# Do not modify the original list.

def reverse(array)
  new_array = []
  index_down = -1
  while new_array.size < array.size
    new_array << array[index_down]
    index_down -= 1
  end
  new_array
end

reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

### ls sol ###
def reverse(array)
  result_array = []
  array.reverse_each { |element| result_array << element }
  result_array
end

# SHORTER VERSION
# inject initialize an empty new array, combines all the el by applying an operation
# Array#unshift prepends each element in original array to new array, keep original unchanged
def reverse(array)
  array.inject([], :unshift)
end
