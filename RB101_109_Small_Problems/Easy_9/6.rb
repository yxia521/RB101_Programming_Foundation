# How long are you?
# Write a method that takes a string as an argument, and returns an 
# Array that contains every word from the string, to which you have 
# appended a space and the word length.

# You may assume that words in the string are separated by exactly 
# one space, and that any substring of non-space characters is a word.


# ---------------
# input: a string with or without space
# output: an array, containing string - "the word + integer(string.length)"
# rules:
# - create a new array
# - split each word by space
#   - iterate thru the array
#   - save each word's length (.length), put it to a variable length (integer)
#   - concat the word and its corresponding integer, then put this concatation into the new array
# --------------

def word_lengths(string)
  result = string.split.map do |word|
    word + " " + word.length.to_s
  end
  p result 
end

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []




