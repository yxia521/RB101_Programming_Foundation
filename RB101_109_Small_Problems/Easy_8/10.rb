# Get The Middle Character
# Write a method that takes a non-empty string argument, and returns the 
# middle character or characters of the argument. If the argument has an 
# odd length, you should return exactly one character. If the argument has 
# an even length, you should return exactly two characters.

# pseudo code
# input a string, count the string.size
#   - if string.size is .odd?, return char in the position(string.size+1)/2
#   - else return 2 chars, one = string.size/2, one = string.size/2 + 1

def center_of(string)
  if string.size.odd?
    p string[string.size / 2] # no need: string[(string.size - 1) / 2], since/2 get an integer
  else
    p string[(string.size / 2 - 1), 2]
  end
end

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
