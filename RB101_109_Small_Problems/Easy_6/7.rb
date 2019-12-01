# Halvsies

# takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) 
# that contain the first half and second half of the original Array, respectively. 
# If the original array contains an odd number of elements, the middle element 
# should be placed in the first half Array.

# easily understood but cumbersome
def halvsies(array)
  first_half = []
  second_half = []
  count = 0
  if array.size.even?
    while count < array.size / 2 do
      first_half << array[count]
      second_half = array - first_half
      count += 1
    end
  else
    while count <= array.size / 2 do
      first_half << array[count]
      second_half = array - first_half
      count += 1
    end
  end
  [first_half, second_half]
end

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]

### ls sol ###

def halvsies(array)
  middle = (array.size / 2.0).ceil 
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end
=begin
ceil: Returns the smallest number greater than or equal to 
float with a precision of ndigits decimal digits (default: 0).

Our task is to split an array into two pieces, a first and second half. 
We first get the middle, which is more exactly the size of the first half, 
by dividing the original array's size by two. If the original array is odd in size, 
then the call to ceil will account for that, making the first half larger than the second by one.

To create both halves, the Array#slice method is used. Here slice takes two 
arguments: the first one is the starting index and the second one is the 
length of the slice. For the second half, we can use our middle value as 
the starting index and specify a length that includes any remaining elements 
left in the original array after we removed the first half.

Finally, our halvsies array is created by specifying our two halves as the sole 
elements of a new array.
=end
