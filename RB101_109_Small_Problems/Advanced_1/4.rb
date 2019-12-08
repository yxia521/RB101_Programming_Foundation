# Transpose MxN
# In the previous exercise, you wrote a method to transpose a 3 x 3 matrix as 
# represented by a ruby Array of Arrays.

# Matrix transposes aren't limited to 3 x 3 matrices, or even square matrices. 
# Any matrix can be transposed by simply switching columns with rows.

# Modify your transpose method from the previous exercise so it works with any 
# matrix with at least 1 row and 1 column.

def transpose(matrix)
  result = []
  subarray_size = matrix.map{|subarray| subarray.size}.max
  (0..(subarray_size - 1)).each do |column_index|
    result << (0..(matrix.size-1)).map { |row_index| matrix[row_index][column_index] }
  end
  result
end

# --- ls sol ---

def transpose(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size # better than mine
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]
