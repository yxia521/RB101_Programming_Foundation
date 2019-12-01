# returns a hash that shows the number of words of different sizes.

def word_sizes(str)
  hash = Hash.new(0) # create a new hash with default initial value 0
  str.split(' ').each do |word| 
    hash[word.length] += 1 # hash[word.length] = hash[word.length] + 1
  end
  hash
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# hash = Hash.new(0)
# you can add any other pairs to hash, after that
# if you search exist keys, it returns corresponding values,
# if you search nonexist keys, it returns the default initial value 0

# for example:
# count = Hash.new(0)
# count["a"] = 100
# count = {"a" => 100}
# count["a"]
# => 100
# count["c"]
# => 0 

