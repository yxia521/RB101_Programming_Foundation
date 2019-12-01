# Leap Years (Part 2)
# Under the Julian Calendar, leap years occur in any year that is evenly divisible by 4.
# determine leap years both before and after 1752.

def leap_year?(year)
  (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0) #? true : false
end

def before_after_1752?(year)
 (year < 1752 && (year % 4 == 0)) || leap_year?(year)
end

puts before_after_1752?(2016)  
puts before_after_1752?(2015)  
puts before_after_1752?(2100)  
puts before_after_1752?(2400)  
puts before_after_1752?(240000)  
puts before_after_1752?(240001)  
puts before_after_1752?(2000) 
puts before_after_1752?(1900)  
puts before_after_1752?(1752)  
puts before_after_1752?(1700)  
puts before_after_1752?(1)  
puts before_after_1752?(100)  
puts before_after_1752?(400) 
