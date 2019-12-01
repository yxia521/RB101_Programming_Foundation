# Matching Parentheses?
# Write a method that takes a string as argument, and returns true if all 
# parentheses in the string are properly balanced, false otherwise. To be 
# properly balanced, parentheses must occur in matching '(' and ')' pairs.

def balanced?(string)
  parentheses = 0
  string.chars do |char|
    parentheses += 1 if char == '('
    parentheses -= 1 if char == ')'
    break if parentheses < 0 # IMPORTANT: to check the order of ()
  end
  parentheses.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

