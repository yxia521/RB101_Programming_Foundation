# Staggered Caps (Part 2)
# Modify the method from the previous exercise so it ignores non-alphabetic characters 
# when determining whether it should uppercase or lowercase each letter. 
# The non-alphabetic characters should still be included in the return value; 
# they just don't count when toggling the desired case.

def staggered_case(string)
  string = string.chars.delete(/[^a-z]/i)
    (0..string.size).step(2).to_a.each do |index|
    string[index] = string[index].upcase 
  end
  puts string
end

# --- ls sol ---
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

# previous step method doesn't work here 
# cuz either you try to delete all non-alphabetic chars, you have to figure out later 
# how to get these chars back in their original postion
# or you try not to delete chars but skip them using if, but these chars still 
# occupy a space, which will effect your string.size, then things get harder
