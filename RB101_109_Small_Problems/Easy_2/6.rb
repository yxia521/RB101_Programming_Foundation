# Print all odd numbers from 1 to 99, inclusive. 
# All numbers should be printed on separate lines.


(1..99).each{|number| puts number if number % 2 != 0}

# if number.odd?
# (1..99).select{|number| puts number if number.odd?}
# 1.upto(99) {|number| puts number if number.odd?}
