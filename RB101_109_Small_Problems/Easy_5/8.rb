# takes an Array of Integers between 0 and 19, and returns 
# an Array of those Integers sorted based on the English words for each number


# note that every english word is the corresponding index of this array
ENGLISH_WORDS = %w(zero one two three
four five six seven
eight nine ten eleven
twelve thirteen fourteen fifteen
sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  array.sort_by { |index| ENGLISH_WORDS[index]}
end
