# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

#==============================================================================

# Questions may be raised by me:
# 1. What's palindromes?
# 2. Is the palindromes case sensitive? like dad is palindromes, while Dad is not
# 3. How to deal with empty string object?
# 4. Do I need to return an entirely new Array, or just mutate the original?
# 5. Can I assume that all inputs are strings? Do I need to worry about the types of data structures?
# 6. Always verify your assumption by either looking at the test cases or asking questions.

#==============================================================================

# Pseudocode:

# input: a string
# output: an entirely new string, not mutating the original object
# rules: 
#   Explicit requirements:
#     - every palidrome in this string must be converted to uppercase. (remainder: a palidrome is the word that reads the same forwards and backward.)
#     - Palidromes are case sensitive
#   Implicit requirements:
#     - must return a new array, shouldn't be the same as the original
#     - inputs are assumed strings as always, no worries about data structures

# Algorithm:
# substring method
# ================
# initialize an empty variable `result` that will contain the new array
# start the outter loop
#   - break if the start_substring_idx == arr.size
#   - initialize the start_substring_idx equal to 0 
#   - initialize end_substring_idx equal to start_substinrg_idx + 1
#   start the inner loop
#     - break if the end_substring_idx == arr.size
#     - append the result array the string indexed from start_substring_idx to end_substring_idx
#     - increment end_substring_idx by 1
#   end of the inner loop
#   - increment start_substring_idx by 1
#   - reassign end_substring_idx to start_substring_idx + 1
# end of outter loop
# return the `result` array
#
# is_palindrome? method
# =====================
# check if string == string.reverse
#
# palindrome_substring method
# ===========================
# initialize an empty result array
# create an array that contains all of the substrings of the input that contains at least 2 characters
# loop through the words in this substrings array, using .each
# if this word is a palindrome, append it to return array
# return the new result array

#==============================================================================

