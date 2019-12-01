# Lettercase Counter
# Write a method that takes a string, and then returns a hash that 
# contains 3 entries: one represents the number of characters in the string that 
# are lowercase letters, one the number of characters that are uppercase letters, 
# and one the number of characters that are neither.

def letter_case_count(string)
  hash = {}
  arr = string.chars
  count_lowercase = 0
  count_uppercase = 0
  count_neither_lowercase_uppercase = 0

  arr.each{|el| count_lowercase += 1 if ('a'..'z').to_a.include?(el)}
  hash[:lowercase] = count_lowercase
  arr.each{|el| count_uppercase += 1 if ('A'..'Z').to_a.include?(el)}
  hash[:uppercase] = count_uppercase
  hash[:neither] = arr.size - count_uppercase - count_lowercase

  hash
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

### ls sol ###
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end
