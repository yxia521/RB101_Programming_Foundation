# takes this string of words and returns a string in which 
# the first and last letters of every word are swapped.

def swap_first_last_char(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(str)
  result = str.split(' ').map { |word| swap_first_last_char(word)}
  result.join(' ')
end

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Note
# a, b = b, a is a common idiom to exchange value of a and b
# what happens here is: ruby creates a temporary array [b, a]
# it's equivalent to
temporary = [b, a]
a = temporary[0]
b = temporary[1]
