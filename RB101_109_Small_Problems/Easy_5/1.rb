# returns the ASCII string value of a string
# The ASCII string value is the sum of the ASCII values of every character in the string

def ascii_value(str)
  sum = 0
  str.each_char { |char| sum += char.ord }
  sum
end

# or simply:

# def ascii_value(str)
#   str.sum
# end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
