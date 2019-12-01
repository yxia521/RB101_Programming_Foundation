# Next Featured Number Higher than a Given Value
# A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and 
# whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not 
# (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns the next featured number 
# that is greater than the argument. Issue an error message if there is no next featured number.

def featured(number)
  loop do
    featured_num(number)
    number += 1
    break if featured_num(number) == true
  end
  p number
end

def featured_num(featured_num)
  all_digits = featured_num.digits
  featured_num.odd? && featured_num % 7 == 0 && all_digits.all?{|digit| all_digits.count(digit) == 1}
end

# --- ls sol ---

def featured(number)
  number += 1
  number += 1 until number.odd? && number % 7 == 0

  loop do
    number_chars = number.to_s.split('')
    return number if number_chars.uniq == number_chars
    number += 14
    break if number >= 9_876_543_210
  end

  'There is no possible number that fulfills those requirements.'
end

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999)
