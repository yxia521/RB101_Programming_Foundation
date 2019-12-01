def prompt(message)
  puts "==> #{message}"
end
prompt("Enter the first positive number:")

first_number = gets.chomp.to_i
second_number = ''
loop do
prompt("Enter the second positive number:")
second_number = gets.chomp.to_i
if second_number == 0
  prompt("Oops...invalid input! This number can't be 0.")
else
break
end
end

sum = first_number + second_number
subtraction = first_number - second_number
product = first_number * second_number
quotient = first_number / second_number
remainder = first_number % second_number
power = first_number ** second_number

prompt("#{first_number} + #{second_number} = #{sum}")
prompt("#{first_number} - #{second_number} = #{subtraction}")
prompt("#{first_number} * #{second_number} = #{product}")
prompt("#{first_number} / #{second_number} = #{quotient}")
prompt("#{first_number} % #{second_number} = #{remainder}")
prompt("#{first_number} ** #{second_number} = #{power}")
