print "=> What is your name? "
name = gets.chomp # return a new str with the tail end of a string removed, default to a new line

if name.end_with?('!') # or name[-1] = '!'
  name = name.chop # return a new str with the last character removed
  puts "=> HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "=> Hello #{name}."
end
