def factors(number)
  divisor = number
  factors = []
  while  divisor > 0 do 
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end  
 factors # w/o a return, this is the return value of this method
end

puts factors(9)
#=> 1 3 9
