# How Many?
# Write a method that counts the number of occurrences of each element 
# in a given array.
# The words in the array are case-sensitive: 'suv' != 'SUV'. 
# Once counted, print each element alongside the number of occurrences.

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  hash = {} # {"car"=>4, "truck"=>3, "SUV"=>1, "motorcycle"=>2}
  array.each do |el|
    hash[el] = array.count(el)
  end
  hash.each_pair{|k, v| puts "#{k} => #{v}"}
end

count_occurrences(vehicles)
