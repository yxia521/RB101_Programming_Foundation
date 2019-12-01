# takes an Array of numbers, and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

# algorithm
# input an array, create a new sum_array
# put 1st number into new array, then 1st + 2nd into new array, then 1st + 2nd + 3rd....

def running_total(array)
  sum = 0
  p array.map{ |value| sum += value }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# further
def running_total(array)
  sum = 0
  p array.inject([]){ |new_array, value| result << sum += value }
end

# notice that the order of memo_object matters!!!
# memo here is new_array, a container storing what you wanna get each iteration
def running_total(array)
  sum = 0
  p array.each_with_object([]){|value, new_array| new_array << sum += value}
end
