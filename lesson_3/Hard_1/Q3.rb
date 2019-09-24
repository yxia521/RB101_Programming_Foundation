# variable scope and modification of one scope by another

# A)
def mess_with_vars(one, two, three) # the name is coincidentally the same, can be definitely different
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# within the method, just assign, no mutation, so 3 vars won't be mutated.
puts "one is: #{one}" # one
puts "two is: #{two}" # two
puts "three is: #{three}" # three 

# B)
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# 1)just reassign, the original won't be mutated, 
# 2)method has its own scope, can't mutate the variable initialized outside of it
puts "one is: #{one}" # one   
puts "two is: #{two}" # two
puts "three is: #{three}" # three

# C)
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

# with !, method mutates the variables
puts "one is: #{one}" # two
puts "two is: #{two}" # three
puts "three is: #{three}" # one
