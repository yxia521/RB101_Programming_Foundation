# sum of Multiples of 3 and 5

def multisum(integer)
  multiples = []
  (1..integer).each{|el| multiples << el if el % 3 == 0 || el % 5 == 0 }
  puts multiples.sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# algorithm
# input an integer, search thru (1..integer), grab all elements satisfying 
# integer % 3 == 0 || integer % 5 == 0
# put each into new Array


# further exploration
def multisum(integer)
  (1..integer).select{|el| el % 3 == 0 || el % 5 == 0}.inject(:+) # more succinct
end
