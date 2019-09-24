numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

#=> 1
#=> 2
#=> 2
#=> 3

# method .uniq does not mutate the Array numbers (object id, physical memory address are the same)
# calling this method just return a new Array of unique elements
