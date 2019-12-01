# Sum Square - Square Sum
# Write a method that computes the difference between the square of the 
# sum of the first n positive integers and the sum of the squares of the 
# first n positive integers.

def sum_square_difference(n)
  square_of_sum = ((1..n).sum) ** 2
  sum_of_square = (1..n).map{|i| i * i}.sum
  p difference = square_of_sum - sum_of_square
end

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150
