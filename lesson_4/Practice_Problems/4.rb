# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

#=> {a: 'ant', b: 'bear', c: 'cat'}

# take an initial argument, return a new hash initialized as empty hash
# values: the current element in original array

