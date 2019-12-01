# Lettercase Percentage Ratio
# In the easy exercises, we worked on a problem where we had to count the number 
# of uppercase and lowercase characters, as well as characters that were neither 
# of those two. Now we want to go one step further.

# Write a method that takes a string, and then returns a hash that contains 
# 3 entries: one represents the percentage of characters in the string that are 
# lowercase letters, one the percentage of characters that are uppercase letters, 
# and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.

def letter_percentages(string)
  count = {lowercase: 0, uppercase: 0, neither: 0}
  percentage = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars do |char| 
    if char =~ /[a-z]/
      count[:lowercase] += 1
    elsif char =~ /[A-Z]/
      count[:uppercase] += 1
    else
      count[:neither] += 1
    end
  end
  total = count[:lowercase] + count[:uppercase] + count[:neither]
  percentage[:lowercase] = (count[:lowercase] / total.to_f)*100
  percentage[:uppercase] = (count[:uppercase] / total.to_f)*100
  percentage[:neither] = (count[:neither] / total.to_f)*100
  p percentage
end

letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }

# --- ls sol is the same as mine ---
