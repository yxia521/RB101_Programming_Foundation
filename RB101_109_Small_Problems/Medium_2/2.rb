# Now I Know My ABCs
# A collection of spelling blocks has two letters per block, as shown in this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words 
# that do not use both letters from any given block. Each block can only be 
#   used once.

# Write a method that returns true if the word passed in as an argument can 
# be spelled from this set of blocks, false otherwise.

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM)

# algo:
#  - iterate thru each char of string
#   - none of them are mathched in blocks, return true
#   - otherwise, false

  def block_word?(word)
    p word.upcase.split.none?{|letter| BLOCKS.include?(letter)}
  end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

# --- ls sol ---

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end
