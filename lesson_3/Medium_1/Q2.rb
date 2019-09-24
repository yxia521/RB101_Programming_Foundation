puts "the value of 40 + 2 is " + (40 + 2)

# Error: you cannot just concatenate two different types of objects, one String, one Integer

# Fix:
puts "the value of 40 + 2 is #{40 + 2}"

# or
puts "the value of 40 + 2 is " + (40 + 2).to_s
