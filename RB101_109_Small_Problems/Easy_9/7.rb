# Name Swapping
# Write a method that takes a first name, a space, and a last name passed 
# as a single String argument, and returns a string that contains the last 
# ame, a comma, a space, and the first name.

# input:
#   - string
# output:
#   - a new string: last name, first name
# algo:
#   1. split this string into 2-element array: [first_name, last_name]
#   2. new_string << array[-1]
#   3. new_string << ,
#   4. new_string << array.first

def swap_name(string)
  new_name = ''
  new_arr = string.split(' ')
  new_name << new_arr.last + ',' + ' ' + new_arr.first
  new_name
end

### ls sol ###
def swap_name(string)
  string.split(' ').reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'
