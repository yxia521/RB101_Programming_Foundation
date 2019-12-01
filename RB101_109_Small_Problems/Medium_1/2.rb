# Rotation (Part 2)
# Write a method that can rotate the last n digits of a number. 
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. 
# You may assume that n is always a positive integer.

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  all_digits = integer.digits.reverse
  rotated_rightmost_digits = rotate_array(all_digits[-n..-1])
  all_digits.pop(n) 
  (all_digits + rotated_rightmost_digits).join.to_i
end

### ls sol ###
def rotate_rightmost_digits(integer, n)
  all_digits = integer.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
