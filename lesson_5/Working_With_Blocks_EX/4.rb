my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# 18
# 7
# 12

#=> [[18, 7], [3, 12]]

# inner each method's return value is used to determine the return value of outer block
# comparison > return value is boolean, used by if

# return value of inner block: nil
# return value of inner each: sub-array in the current iteration: [18, 7] [3, 12], to determine the return value of outer block
# return value of outer block: [18, 7] [3, 12], same as last each 
# return value of outer each: original array [[18, 7], [3, 12]], assigned to my_arr
