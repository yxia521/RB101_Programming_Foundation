greetings = { a: 'hi' } # greetings.object_id = 70261181484300 
informal_greeting = greetings[:a] #=> "hi"
informal_greeting << ' there'


greetings.object_id #=> 70261181484300 still the same
greetings[:a].object_id #=> 70261181484420 
informal_greeting.object_id #=> 70261181484420
# greetings[:a] reference the same object as informal_greeting is referencing

puts informal_greeting  #=> "hi there"
puts greetings[:a] #=> "hi there"
puts greetings #=> {:a=>"hi there"}

# The reason is because informal_greeting is a reference to the original object. 
# The line informal_greeting << ' there' was using the String#<< method, which modifies the object that called it. 
# This means that the original object was changed, thereby impacting the value in greetings.



# only modify informal_greeting but not greetings：
greetings = { a: 'hi' }
informal_greeting = greetings[:a].clone # create a copy of the original
informal_greeting << ' there'

puts informal_greeting  #=> "hi there"
puts greetings
