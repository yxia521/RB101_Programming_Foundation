# Right Triangles
# takes a positive integer, n, as an argument, and displays a right triangle 
# whose sides each have n stars

def triangle(integer)
  count = 1
  space = integer
  loop do
    puts sprintf("%0#{space}s", "*" * count)
    count += 1
    break if count > integer
  end
end

triangle(5)
triangle(9)

#     *
#    **
#   ***
#  ****
# *****

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

