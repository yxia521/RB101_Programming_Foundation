[[[1, 2], [3, 4]], [5, 6]].map do |arr| # 2-element: [[1, 2], [3, 4]] and [5, 6]
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer: 5 and 6
      el + 1
    else                    # it's an array: [1, 2] and [3, 4]
      el.map do |n|
        n + 1
      end
    end
  end
end

#=> [[[2, 3], [4, 5], [6, 7]]

# line 6-8, the block's return value is 2, 3 | 3, 4 respectively (including 1st and 2nd iterations)
# el.map cares about this block's return value, so it returns a new array [2, 3] | [3, 4]

# within if statement, .size == 1 returns boolean, if true, el + 1 returns integer 6, 7

# the upper do block starting on line 2, return value is, [2,3], [3, 4] | 6, 7
# arr.map cares about its block's return value, so it returns a new array [[2, 3], [3, 4]] | [6, 7]
# this is used to determine the upper block's return value on line 1

# line 1, the block's return value is still [[2, 3], [3,4]] | [6, 7]
# map cares about its block's return value, thus returns a new array [[[2, 3], [4, 5], [6, 7]]
