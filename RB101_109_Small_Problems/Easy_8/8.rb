# Double Char (Part 2)
# Write a method that takes a string, and returns a new string in which 
# every consonant character is doubled. Vowels (a,e,i,o,u), digits, 
# punctuation, and whitespace should not be doubled.

# algorithm:
# iterate through the string using each_char
#   - if /[a-z]/i && char =~ /[^aeiou]/i, return character * 2
#   - else return character

def double_consonants(string)
  doubled_str = ''
  string.each_char do |char|
    if char =~ /[a-z]/i && char =~ /[^aeiou]/i
      doubled_str << char *= 2
    else
      doubled_str << char
    end
  end
  p doubled_str
end

# --- ls sol ---

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
