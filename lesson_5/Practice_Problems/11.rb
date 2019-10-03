# return a new array identical in structure to the original but containing 
# only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

# use select
arr.map do |sub_arr| 
  sub_arr.select do |el|
    el % 3 == 0
  end
end

# => [[], [3], [9], [15]]

# use reject
arr.map do |sub_arr|
  sub_arr.reject do |el|
    el % 3 != 0
  end
end
