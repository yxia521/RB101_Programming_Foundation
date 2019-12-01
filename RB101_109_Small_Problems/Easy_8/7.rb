# Double Char (Part 1)
# Write a method that takes a string, and returns a new string in which 
# every character is doubled.

def repeater(string)
  doubled_arr = []
  string.each_char{ |char| doubled_arr << char *= 2} 
  p doubled_arr.join
end

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
