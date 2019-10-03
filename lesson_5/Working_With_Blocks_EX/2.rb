[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end

# 1
# 3

#=> [nil, nil]

# map is called on the nested array, then each sub-array is passed to the block, and assigned to a local variable arr
# first is called on each sub-array, and then returns the value that at the index 0 of each sub-array
# puts is called, and outputs the integer 1, 3 respectively
# since puts is the last expression in this block, the return value of the block is nil
# map does cares about the return value of the block, so the return value of the method will be [nil, nil]
