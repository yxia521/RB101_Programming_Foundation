# All Substrings
# Write a method that returns a list of all substrings of a string. 
# The returned list should be ordered by where in the string the substring begins. 
# This means that all substrings that start at position 0 should come first, 
# then all substrings that start at position 1, and so on. Since multiple 
# substrings will occur at each position, the substrings at a given position 
# should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote 
# in the previous exercise:

# algorithm: 
# bigger loop: iterate from index 0 to str.size, increment staring_index += 1 
#   inner loop:
#     - generate each substring, add each substring to new_arr
#     - start_index fixed, end_index += 1 
#   break if end_index == str.size
# break if start_index == str.size

def substrings(str)
  start_index = 0
  end_index = 0
  new_arr = []
  loop do 
    loop do 
      substring = ''
      substring += str[start_index..end_index]
      new_arr << substring
      end_index += 1
      break if end_index == str.size
    end
    start_index += 1
    end_index = start_index
    break if start_index == str.size
  end 
  p new_arr
end

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

### ls sol ###
def substrings_at_start(str)
  new_arr = []
  1.upto(str.size) do |count| 
    substring = ''
    substring += str.slice(0, count)
    new_arr << substring
  end
  p new_arr
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index| # only thing differ from Q3 is increment start_index by 1
    this_substring = string[start_index..-1] # this_substring contains string[0..-1] (abcde); [1..-1] (bcde); [2..-1] (cde)
    results.concat(substrings_at_start(this_substring)) # substrings_at_start do the operation, use concat to format each substring
  end
  p results
end
