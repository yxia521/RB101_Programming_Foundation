[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

# 1
# 3

#=> [1, 3]

# difference from 2nd example: 
# arr.first is the last expression of the block, so the return value of block is integer 1, 3 respectively
# the block's return value is then used by map to perform the transformation
# so the method returns a new array [1, 3]
