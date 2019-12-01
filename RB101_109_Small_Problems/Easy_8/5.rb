# Palindromic Substrings
# Write a method that returns a list of all substrings of a string that are 
# palindromic. That is, each substring must consist of the same sequence of 
# characters forwards as it does backwards. The return value should be arranged
# in the same sequence as the substrings appear in the string. 
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters 
# and pay attention to case; that is, "AbcbA" is a palindrome, but 
# neither "Abcba" nor "Abc-bA" are. In addition, assume that single 
# characters are not palindromes.

# Algorithm:
# 1. Use substring to get all substrings
# 2. pick out the palindromic strings of substrings

def substrings_at_start(str)
  new_arr = []
  1.upto(str.size) do |count| 
    substring = ''
    substring += str.slice(0, count)
    new_arr << substring
  end
  new_arr
end

def substrings(string)
  results = []
  (0...string.size).each do |start_index| # only thing differ from Q3 is increment start_index by 1
    this_substring = string[start_index..-1] # this_substring contains string[0..-1] (abcde); [1..-1] (bcde); [2..-1] (cde)
    results.concat(substrings_at_start(this_substring)) # substrings_at_start do the operation, use concat to format each substring
  end
  results
end

def palindrome?(string)
  string == string.reverse && string.size > 1
end

def palindromes(string)
  all_substrings = substrings(string)
  result = []
  all_substrings.each do |substring|
    result << substring if palindrome?(substring)
  end
  p result
end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
