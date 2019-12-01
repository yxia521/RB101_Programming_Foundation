# Double Doubles
# A double number is a number with an even number of digits whose 
# left-side digits are exactly the same as its right-side digits. 
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, 
# nd 107 are not.

# Write a method that returns 2 times the number provided as an argument, 
# unless the argument is a double number; double numbers should be 
# returned as-is.

# input
#   - an integer
#     - doubled number 
#     - non-doubled number
# output:
#   - a new integer
# algorithm:
#   - get the input
#   - determine if it's doubled number 
#     - size must be even
#       - if true, get the unique number of the integer, 
#       if this uniq number.size == integer digits number / 2, double number, return this value
#       else it's not, return integer*2
#       - if false, NOT doubled number, return ((this number)*2)

def twice(integer)
  uniq_size = integer.to_s.split('').uniq.size
  if integer.to_s.size % 2 == 0 
    if uniq_size == (integer.to_s.size / 2) || uniq_size == 1 # for all-digits-the-same integer
      return integer 
    else
      return integer * 2
    end
  else
    return integer * 2
  end
end

### ls sol ###
# partition the integer into 2 parts, if the 2 parts equal, it's doubled number
# 1. turn the number into string
# 2. find a center of string
# 3. create variables for both right side and left side
# 4. compare these sides and return value
def twice(integer)
  string_number = integer.to_s
  center = string_number.size / 2
  if center != 0
  left_side = string_number[0..(center - 1)]
  right_side = string_number[center..-1]
  else
    return integer*2
  end
  return integer if left_side == right_side
  return integer*2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
p twice(0) == 0
