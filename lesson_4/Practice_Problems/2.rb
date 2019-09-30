# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

#=> 2

# find under Enumerable#count
# count returns the number of items thru enumeration
# if a block is given, it counts the number of elements yielding a true value
# it means count consider the truthiness of the block's return value
