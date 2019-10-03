[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1| # iterate thru 2-element
  element1.each do |element2| # element 1 is [[1], [2], [3], [4]], element 2 is [1]
    element2.partition do |element3| # element 3 is 1
      element3.size > 0
    end
  end
end

#=> [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

# element3.size > 0 returns boolean, used to determine the upper block's return value

# partition block's return value still the same as last: boolean
# partition returns two arrays, [true_arr, false_arr], since the block's return value is always true, 
# partition's return value is [[1], []]..., used to determine the upper block's return value

# each block's return value is still [[1], []]...
# each doesn't care about the return value of its block
# each returns the original array: [[1], [2], [3], [4]]... used to determine the upper block's return value
# ======== actually, by just looking at each, we should know the final return value ===========

# map block's return value is still [[1], [2], [3], [4]]...
# map cares about its block's return value, it will returns a new array, 
# which contains 2 element: [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

