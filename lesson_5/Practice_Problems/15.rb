# return an array which contains only the hashes where all the integers are even.

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}] 
# 3-hash element
# before writing codes, we know that only 1 hash should be return

arr.select do |hsh|
  hsh.all? do |_, v|
    v.all?{|integer| integer.even?}
  end
end

# => [{:e=>[8], :f=>[6, 10]}] 

