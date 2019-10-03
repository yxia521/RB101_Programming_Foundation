# we want to sort the outer array so that the inner arrays are ordered according to the numeric value of the strings they contain

arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

# in order to sort numerically, we need to convert string to integer

arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end

# inner block's return value is an integer, used to determine map's return value
# inner map's return value is the new array of integers, [1, 8, 11] [2, 6, 13]... leaves the original sub array unmodified
# outer sort_by uses the transformed element to compare, and return the unmodified original array
# JUST NOTICE that sort_by only use transformation to do comparison, the original array will not be mutated/transformed.
