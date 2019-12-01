# Word to Digit
# Write a method that takes a sentence string as input, and returns the same 
# string with any sequence of the words 
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' 
# converted to a string of digits.

# break this problem into 2 smaller ones:
# 1. convert string into string of digits
# 2. print out them as needed.

# ----- my version -----

# This is not correct, not sure how to split the sentence by space and by punctuationthe 
# result would be:
# "Please call me at 5 5 5 1 2 3 four. Thanks."

DIGITS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']

def convert_to_digits(string)
  case string
  when 'zero'
    '0'
  when 'one'
    '1'
  when 'two'
    '2'
  when 'three'
    '3'
  when 'four'
    '4'
  when 'five'
    '5'
  when 'six'
    '6'
  when 'seven'
    '7'
  when 'eight'
    '8'
  when 'nine'
    '9'
  end
end

def word_to_digit(sentence)
  result = sentence.split.map do |word|
    if DIGITS.include?(word)
      word = convert_to_digits(word)
    else
      word
    end 
  end
  p result.join(' ')
end

# ----- ls sol -----

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  p words
end

word_to_digit('Please call me at five five five one two three four. Thanks.')
#=> 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# We use \b to limit the operation to complete words, not substrings. 
# For instance, if the phrase/sentence passed into the method has the 
# word "freight" in it, we won't replace it. If we don't use \b, we would 
# convert "freight" to "fr8".
