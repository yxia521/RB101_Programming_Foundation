# without using the Array#to_h method, write some code that will return a hash 
# where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

new_hsh = {}
arr.each do |current_sub_arr|
  new_hsh[current_sub_arr[0]] = current_sub_arr[1]
end
new_hsh

# => {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}
