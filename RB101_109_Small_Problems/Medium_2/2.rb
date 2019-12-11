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

PAIRS = [["B","O"] ,  ["X","K"],   ["D","Q"],   ["C","P"],   ["N","A"],
["G","T"] ,  ["R","E"]  , ["F","S"]  , ["J","W"]   ,["H","U"],
["V","I"]   ,["L","Y"]  , ["Z","M"]]

# iterate thru the PAIRS,
#  for each pair, it two letters are both included in the string, return false
#     string.include?(first el) && string.include?(second el)
#  otherwise true

def block_word?(string)
  PAIRS.each do |pair|
    return false if string.include?(pair.first) && string.include?(pair.last) 
  end
  true
end

# --- ls sol ---

BLOCKS = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

# --- inspire by ls sol, my 2nd try ---

def block_word?(string)
  # make sure every block is just used only once or never be used
  BLOCKS.all?{|pair| string.count(pair) < 2}  
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
