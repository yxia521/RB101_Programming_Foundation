# use the map method to return a new array identical in structure to the original 
# but where the value of each integer is incremented by 1.

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |sub_hsh|
  new_hsh = {}
  sub_hsh.each_pair{|key, value| new_hsh[key] = value + 1}
  new_hsh
end
# => [{:a=>2}, {:b=>3, :c=>4}, {:d=>5, :e=>6, :f=>7}] 

# each_pair returns the pair with value incremented by 1
# new_hsh returns all transformed hash
# finally, map transformed these hashes into a new array

# or

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each_with_object([]) do |sub_hsh, arr|
  new_hsh = {}
  sub_hsh.each{|key, value| new_hsh[key] = value + 1 }
  arr << new_hsh
end

# each_with_object initialed with an empty array
# sub_hsh: current hash when iterating
# arr: final new arr you want to get, initialzed as empty
