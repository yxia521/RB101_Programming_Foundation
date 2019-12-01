# asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum 
# or product of all numbers between 1 and the entered integer.

puts ">> Please enter an integer greater than 0:"
integer = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
answer = gets.chomp.downcase

# Enumerable.inject
if answer == 's'
sum = (1..integer).sum # .inject(:+)
# or sum = (1..integer).inject{|sum, n| sum + n}
puts "The sum of the integers between 1 and #{integer} is #{sum}."
else
product = (1..integer).inject(:*) 
puts "The product of the integers between 1 and #{integer} is #{product}."
end
# or product = (1..integer).inject(1){|product, n| product * n}
