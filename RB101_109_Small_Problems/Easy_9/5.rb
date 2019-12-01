# Uppercase Check
# Write a method that takes a string argument, and 
# returns true if all of the alphabetic characters inside the string 
# are uppercase, false otherwise. Characters that are not alphabetic 
# should be ignored.

# input
#  - string
# output
#  - boolean value true/false
# rules:
#  - determine if all characters of string are uppercase
# algorithm:
#  - get the string
#  - iterate thru each char, (each_char)
#   - if every char is uppercase || '' , (/[^A-Z]/) return true
#   - else return false

def uppercase?(string)
  string.split('').any? {|char| return false if char =~ /[a-z]/ }
  true # VERY IMPORTANT
end

### ls sol ###
# def uppercase?(string)
#   string == string.upcase
# end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
