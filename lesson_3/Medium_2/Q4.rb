def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga' # mutates the original
  an_array_param = ['pumpkins', 'rutabaga'] # create a copy, keep the original the same
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}" #=> pumpkinsrutabaga
puts "My array looks like this now: #{my_array}" #=> ["pumpkins"]
