DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
 result = ''
 integer = integer.abs if integer < 0

 loop do
   integer, remainder = integer.divmod(10) 
   result.prepend(DIGITS[remainder]) 
   break if integer == 0
 end
 result
end

def signed_integer_to_string(integer)
  if integer > 0
    '+' + integer_to_string(integer)
  elsif integer < 0
    '-' + integer_to_string(integer) 
  else
    integer_to_string(integer)
  end
end


p signed_integer_to_string(4321) 
p signed_integer_to_string(-123) 
p signed_integer_to_string(0) 
