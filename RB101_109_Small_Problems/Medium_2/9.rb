# Bubble Sort
# Bubble Sort is one of the simplest sorting algorithms available. 
# It isn't an efficient algorithm, but it's a great exercise for student developers. 
# In this exercise, you will write a method that does a bubble sort of an Array.

# A bubble sort works by making multiple passes (iterations) through the Array. 
# On each pass, each pair of consecutive elements is compared. If the first of the 
# two elements is greater than the second, then the two elements are swapped. 
# This process is repeated until a complete pass is made without performing any 
# swaps; at that point, the Array is completely sorted.

# --- ls sol ---

def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  nil
end

# --- my 2nd try ---

# iterate thru the array, each with index
#   compare the index, with index + 1, if index > index + 1, switch
#   break if index + 1 > array.size - 1
# end
# repeat this process until we get the same result as we call sort
# return array

def bubble_sort!(array)
  ascending_order = array.sort
  loop do
    array.each_with_index do |i, index|
      array[index], array[index+1] = array[index+1], array[index] if array[index] > array[index+1]
      break if index + 1 == array.size-1
    end
    break if array == ascending_order
  end
  p array
end

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
