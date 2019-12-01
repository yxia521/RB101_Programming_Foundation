# Diamonds!
# Write a method that displays a 4-pointed diamond in an n x n grid, 
# where n is an odd integer that is supplied as an argument to the method. 
# You may assume that the argument will always be an odd integer.

# algo:
#   - get an odd number
#   - generate n lines of *
#     - iterate thru (1..(n+1)/2)
#       - in every iteration, generate spaces + *

# 4 spaces, 1 *
# 3 spaces, 3 *
# 2 spaces, 5 *
# 1 space , 7 *
# 0 space,  9 *
# 1
# 2
# 3
# 4

def diamond(n)
  return "*" if n == 1
  # iterate thru a range, first half part
  pre_space = (n-1)/2
  (1..n).step(2) do |star|
    current_line = ' ' * pre_space + '*' * star
    pre_space -= 1
    puts current_line
  end

  # second half part
  pre_space = 1
  (n-2).step(1, -2) do |star|
    current_line = ' ' * pre_space + '*' * star
    pre_space += 1
    puts current_line
  end
end

### ls sol ###
# break down this problem into 2 smaller ones:
# 1. print each row 
# 2. iterate thru each row following some rule

def print_row(n, distance_from_center)
  number_of_starts = n - 2 * distance_from_center
  stars = '*' * number_of_starts
  puts stars.center(n)
end

def diamond(n)
  max_distance_from_center = (n - 1)/2
  max_distance_from_center.downto(0) {|distance| print_row(n, distance)}
  1.upto(max_distance_from_center) {|distance| print_row(n, distance)}
end

diamond(1)
diamond(3)
diamond(9)
diamond(7)

#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
