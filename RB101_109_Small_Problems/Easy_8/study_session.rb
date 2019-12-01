# algorithm:
# iterates through the string
#   - write 1st char once, 2nd char twice, 3rd char 3 times, etc...
#     - capitalize each first char
#   - concat all of them by "-" hash sign

def accum(string)
  current_string = ''
  new_arr = []
  (0...string.size).each do |index|
    current_string = string[index] * (index + 1)
    new_arr << current_string.capitalize
  end
  new_arr.join("-")
end

p accum("abcd")    # "A-Bb-Ccc-Dddd"
p accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
p accum("cwAt")
