# Modify the word_sizes method to exclude non-letters when determining word size

def word_sizes(str)
  hash = Hash.new(0) # create a new hash with default initial value 0
  str.split(' ').each do |word| 
    clean_word = word.delete('^a-zA-Z')
    hash[clean_word.length] += 1 # hash[word.length] = hash[word.length] + 1
  end
  hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
