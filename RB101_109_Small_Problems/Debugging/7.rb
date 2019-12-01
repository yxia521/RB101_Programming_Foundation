# Neutralizer
# We wrote a neutralize method that removes negative words from sentences. 
# However, it fails to remove all of them. What exactly happens?

def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# ----- revised version -----

# At index 0, nothing interesting happens. When the iteration is at index 1, 
# the element is "dull". Since it counts as negative, it is deleted from the array. 
# As a consequence, each subsequent word is shifted one position to the left. 
# In particular, the word that was previously at position 2, "boring", 
# is now at position 1. So in the next step, when the iteration is at index 2, 
# it finds "cards". Our mutation of the array caused it to skip "boring".

def neutralize(sentence)
  words = sentence.split(' ')
  words.reject! { |word| negative?(word) } # avoid mutating the array while iteration
  words.join(' ')
end

# While iterating over an array, avoid mutating it from within the block. 
# Instead you can use the Array methods select or reject/reject!.
