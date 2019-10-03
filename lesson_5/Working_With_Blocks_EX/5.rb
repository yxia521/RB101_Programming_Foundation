[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

#=> [[2, 4], [6, 8]]

# return value of inner block: an integer that are multiplied in each iteration, used to determine the return value of inner map
# return value of inner map: new array [2, 4] in 1st iteration, [6, 8] in 2nd iteraiton, used to determine the return value of outer block
# return value of outer block: the same as last map, used to determine return value of outer map
# return value of outer map: a new transformed array [[2, 4], [6, 8]]

