def real_palindrome?(input)
  input.downcase.gsub(/\W/, '') == input.downcase.gsub(/\W/, '').reverse
end

p real_palindrome?('madam')
p real_palindrome?('Madam')
p real_palindrome?("Madam, I'm Adam")
p real_palindrome?('356653')
p real_palindrome?('356a653') 
p real_palindrome?('123ab321') #=> false
