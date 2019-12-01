# Convert number to reversed array of digits
# Write a method that takes a positive integer as an argument and 
# returns that number with its digits reversed

# pseudo code
# input a positive integer, iterates through each digit of it 
# using Integer#digits, .digits return a array with digits backwards
#  - .join them to sting. then transfer to integer

 def reversed_number(integer)
  p integer.digits.join.to_i # .to_i automatically omit the leading 0s
 end

# --- ls sol ---

def reversed_number(number)
  string = number.to_s
  reversed_string = string.reverse
  reversed_string.to_i
end

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
