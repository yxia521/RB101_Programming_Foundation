DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] } # return a new array with numeric digits of strings

  value = 0
  digits.each { |digit| value = 10 * value + digit } # yields the desired result
  p value
end

def string_to_signed_integer(string)
  if string.start_with?('-')
    string.delete!('-')  
    digits = string.chars.map { |char| DIGITS[char] } 
  
    value = 0
    digits.each { |digit| value = 10 * value + digit }
    p -value
  elsif string.start_with?('+')
    string.delete!('+')  
    digits = string.chars.map { |char| DIGITS[char] } 

    value = 0
    digits.each { |digit| value = 10 * value + digit } 
    p value
  else
    digits = string.chars.map { |char| DIGITS[char] } 

    value = 0
    digits.each { |digit| value = 10 * value + digit } 
    p value
  end
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100


# or
def string_to_signed_integer(string)
  case string[0] # index of sign
  when '-' then -string_to_integer(string[1..-1]) # starting at 2nd char and end with last char
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end
