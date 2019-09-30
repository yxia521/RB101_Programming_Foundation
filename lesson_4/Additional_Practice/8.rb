# What happens when we modify an array while we are iterating over it? What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number| # each indeed works with index
  p number
  numbers.shift(1) #=> mutate the original to [2,3,4]
end

#=> 1
#=> 3

# equivalent to: 
# must know how each works is actually the same as below loop:
index = 0 
numbers = [1, 2, 3, 4]
while index < numbers.size
  puts numbers[index] #=> 1
  numbers.shift(1) #=> [2, 3, 4]
  index += 1 # index = 1 
end


#==========================
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# equivalent to:
index = 0
while index < numbers.size
  puts numbers[index] #=> 1
  numbers.pop(1) #=> [1,2,3]
  index += 1 # index = 1

#=> 1
#=> 2
