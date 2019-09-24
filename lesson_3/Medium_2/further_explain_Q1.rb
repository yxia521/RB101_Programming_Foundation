# extension part of Medium 2 Q1
# example explaining reassignment inside of block
a = 1
# b = 1.5

1.times do
  a = 2
  b = 3
end

puts a 
#=> 2
puts b 
# since b is not initialized outside, inside b = 3 lose meaning when leave block
# this actually also affirms that variable initialized outside of block,
# can be used by block: a is used and reassigned
