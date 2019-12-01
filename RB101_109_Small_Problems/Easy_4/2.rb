# New centuries begin in years that end with 01. So, 
# the years 1901-2000 comprise the 20th century.

def suffix(century)
  last_two_digits = century % 100
  return "#{century}th" if [11, 12, 13].include?(last_two_digits) 
  # Here must include return, instead of puts, since method will exit 
  # after executing line 5, which means if 11, 12, 13, the result will immediately
  # be on the screen, case last digit 1, 2, 3 will not be executed.
  # This prohibits from doubling and misrepresenting results, like puts would do
  
  last_digit = century % 10

  case last_digit
  when 1 then "#{century}st"
  when 2 then "#{century}nd"
  when 3 then "#{century}rd"
  else
    "#{century}th"
  end
end

def century(year)
  if year % 10 >= 1
    century = (year/100) + 1
    suffix(century)
  else
    century = year/100
    suffix(century)
  end
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)

# algorithm
# enter an integer as year, if this integer end with >= 1, return value of
# first half digits + 1
