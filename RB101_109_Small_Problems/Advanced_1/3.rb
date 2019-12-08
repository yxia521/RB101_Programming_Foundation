# Transpose 3x3
# A 3 x 3 matrix can be represented by an Array of Arrays in which the main Array 
# and all of the sub-Arrays has 3 elements. For example:

# 1  5  8
# 4  7  2
# 3  9  6
# can be described by the Array of Arrays:

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]
# An Array of Arrays is sometimes called nested arrays because each of the 
# inner Arrays is nested inside an outer Array.

# The transpose of a 3 x 3 matrix is the matrix that results from exchanging 
# the columns and rows of the original matrix. For example, the transposition 
# of the array shown above is:

# 1  4  3
# 5  7  9
# 8  2  6
# Write a method that takes a 3 x 3 matrix in Array of Arrays format and 
# returns the transpose of the original matrix. Note that there is a 
# Array#transpose method that does this -- you may not use it for this exercise. 
# You also are not allowed to use the Matrix class from the standard library. 
# Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new 
# matrix and leave the original matrix unchanged.

# iterate thru array
#  for each subarray, grab all numbers at index 0 to a new array
#                     grab all num at index 1 to a new array
#                     grab  ...       index 2
# return a new array containing all these subarrays

def transpose(matrix)
  first = []
  second = []
  third = []
  
  matrix.map do |subarray|
    first << subarray[0]
    second << subarray[1]
    third << subarray[2]
  end
  [first, second, third]
end
   
# --- ls sol ---
# better sol if the matrix is not only 3x3 but any mxn
def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    result << (0..2).map { |row_index| matrix[row_index][column_index] }
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
