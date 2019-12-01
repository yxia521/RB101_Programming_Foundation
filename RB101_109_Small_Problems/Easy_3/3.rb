print "Please write word or multiple words:"
answer = gets.chomp
count = 0
answer.each_char{|x| count += 1 if x != ' ' } 
# count = answer.delete(' ').size

puts "There are #{count} characters in \"#{answer}\"."
