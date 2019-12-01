# Notice the convert to float
# the use of method .round(2)

SQMETERS_TO_SQFEET = 10.7639
puts "=> Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "=> Enter the width of the room in meters:"
width = gets.chomp.to_f

area_sq_meter = (length * width).round(2)
area_sq_feet = (area_sq_meter * SQMETERS_TO_SQFEET).round(2)
puts "=> The area of the room is #{area_sq_meter} " +  
"square meters (#{area_sq_feet} square feet)."

# ask for the input measurements in feet, and display the results 
# in square feet, square inches, and square centimeters.
SQFEET_TO_SQINCH = 144
SQFEET_TO_SQCM = 929.0304
puts "=> Enter the length of the room in feets:"
length_feet = gets.chomp.to_f
puts "=> Enter the width of the room in feets:"
width_feet = gets.chomp.to_f

sq_feet = (length_feet * width_feet).round(2)
sq_inches = (sq_feet * SQFEET_TO_SQINCH).round(2)
sq_cm = (sq_feet * SQFEET_TO_SQCM).round(2)
puts "=> The area of the room is #{sq_feet} square feet," +
" #{sq_inches} square inches, and #{sq_cm} square centimeters."
