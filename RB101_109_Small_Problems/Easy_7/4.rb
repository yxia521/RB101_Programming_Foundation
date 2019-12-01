# Swap Case
# Write a method that takes a string as an argument and returns a new string 
# in which every uppercase letter is replaced by its lowercase version, and every 
# lowercase letter by its uppercase version. All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(string)
  swapped_arr = string.chars.map do |char| 
    if char =~ /[A-Z]/
      char.downcase  
    elsif char =~ /[a-z]/
      char.upcase
    else
      char
    end
  end
  puts swapped_arr.join
end
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
