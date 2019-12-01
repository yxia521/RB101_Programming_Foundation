# returns that string with all of the non-alphabetic characters replaced by spaces.
LETTERS = ('a'..'z').to_a

def cleanup(str)
  result = str.split('').map do |char|
    if LETTERS.include?(char)
      char
    else
      char = ' ' 
    end
  end
  result.join.squeeze(' ')
end

cleanup("---what's my +*& line?")c== ' what s my line '

#### LS solution ####
def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

# /[^a-z]/i is a regular expression that 
# matches any character that is not an uppercase or lowercase letter. 
# The /i part of this expression is what makes this expression case insensitive.
