# Rotation (Part 3)
# If you take a number like 735291, and rotate it to the left, you get 352917. 
# If you now keep the first digit fixed in place, and rotate the remaining digits, 
# ou get 329175. Keep the first 2 digits fixed in place and rotate again to 
# 321759. Keep the first 3 digits fixed in place and rotate again to get 
# 321597. Finally, keep the first 4 digits fixed in place and rotate the 
# final 2 digits to get 321579. The resulting number is called the maximum 
# rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum 
# rotation of that argument. You can (and probably should) use the 
# rotate_rightmost_digits method from the previous exercise.
# Note that you do not have to handle multiple 0s

# 735291
# 352917
# 329175
# 321759
# 321597
# 321579

# algo:
#   fix 0 number, rotate last 6 = (integer.to_s.chars.length - 0) digits
#   fix 1 number, rotate last 5 = (integer.to_s.chars.length - 1) digits
#   fix 2 number, rotate last 4 = (integer.to_s.chars.length - 2) digits
#   fix 3 number, rotate last 3 = (integer.to_s.chars.length - 3) digits
#   fix 4 number, rotate last 2 = (integer.to_s.chars.length - 4) digits

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n) # rotate the last n digits
  all_digits = integer.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

### ls sol ###
def max_rotation(integer)
  all_digits = integer.to_s.size
  all_digits.downto(2).each do |num|
  integer = rotate_rightmost_digits(integer, num)
  end 
  p integer
end
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
