def palindrome?(string)
  string == string.reverse
end


p palindrome?('madam') 
p palindrome?('Madam') 
p palindrome?("madam i'm adam") 
p palindrome?('356653') 
p palindrome?(['m', 'a', 'd', 'a', 'm']) # so input can be either string or array
