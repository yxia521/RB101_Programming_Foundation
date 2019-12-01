DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(integer)
 result = ''
 loop do
   integer, remainder = integer.divmod(10) 
   #4321, quotient 432, remainder 1, =>return array[432, 1]
   #432, quotient 43, remainder 2, =>return[43, 2]
   #43, quotient 4, remainder 3. =>return[4, 3]
   #4, quotient 0, remainder 4, =>return[0, 4], break because now integer == 0

   result.prepend(DIGITS[remainder]) #=> '4''3''2''1'  # prepend is mutating
   break if integer == 0
 end
 p result
end

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'




# or shorter version
def integer_to_string(integer)
  integer.digits.reverse.join
end

# digits=> [1,2,3,4]
# reverse=>[4,3,2,1]
# join=> '4321'
