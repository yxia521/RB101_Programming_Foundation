require 'date'

puts "=> What is your age?"
current_age = gets.chomp.to_i
puts "=> At what age would you like to retire?"
retire_age = gets.chomp.to_i

years_to_go = retire_age - current_age

puts "=> It's #{Date.today.year}. You will retire in #{Date.today.year + years_to_go}."
puts "=> You have only #{years_to_go} years of work to go!"

# to get the current year, also:
# Time.now.year
