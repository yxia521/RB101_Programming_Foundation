def oddities(array)
  odd_array = []
  array.select.with_index{ |element, index| odd_array << element if index.even?}
  odd_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6]) 
p oddities(['abc', 'def']) 
p oddities([123]) 
p oddities([])

########## even array ##############
def even(array)
  even_array = []
  index = 1
  while index < array.size
    even_array << array[index]
    index += 2
  end
  even_array
end

p even([2, 3, 4, 5, 6])
p even([1, 2, 3, 4, 5, 6]) 
p even(['abc', 'def']) 
p even([123]) 
p even([])
