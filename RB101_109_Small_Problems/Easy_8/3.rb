# Leading Substrings
# Write a method that returns a list of all substrings of a string that start at 
# the beginning of the original string. The return value should be arranged in order 
# from shortest to longest substring.

# algorithm:
# iterate through the string, (char)
#   - save each substring to a new array every time we add another char
#   - iterate end upto the size of string
# return the new array

def substrings_at_start(str)
  new_arr = []
  1.upto(str.size) do |count| 
    substring = ''
    substring += str.slice(0, count)
    new_arr << substring
  end
  p new_arr
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# ls sol
def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
