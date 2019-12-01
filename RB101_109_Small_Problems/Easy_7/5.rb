# Staggered Caps (Part 1)
# Write a method that takes a String as an argument, and returns a new String that 
# contains the original value using a staggered capitalization scheme in which 
# every other character is capitalized, and the remaining characters are lowercase. 
# Characters that are not letters should not be changed, but count as characters 
# when switching between upper and lowercase.

def staggered_case(string)
  string = string.downcase
  (0..string.size).step(2).to_a.each do |index|
    string[index] = string[index].upcase if string[index] != nil
  end
  puts string
end

# --- ls sol ---
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Range#step(n)
#   - iterates over a range, passing every nth element to the block
#   - (0..string.size).step(2).to_a returns an array [0, 2, 4, 8...], the index of every other element, 
#     starting from the element at index 0.
#   - so, for further exploration, we just need to change the starting index from 0 to 1, 
#     like this: (1..string.size).step(2).to_a
