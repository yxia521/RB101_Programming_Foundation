def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}" #=> pumpkins
puts "My array looks like this now: #{my_array}" #=> ["pumpkins", "rutabaga"]

# refactor
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga" # signs are the same
  an_array_param += ["rutabaga"] # both of them want to just add one element to the orginal, so it's good to write the same sign

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
