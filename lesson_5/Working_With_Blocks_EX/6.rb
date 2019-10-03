# we want to select all elements where every key matches the first letter of the value. 

[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end

#=> [{ c: 'cat' }]

# all? method returns true if the block never returns false or nil, so all? cares about the truthiness of its block's return value
# inner block returns boolean on each iteration: 1st: true, false -> false, 2nd: true -> true, used to determine the all?'s return value
# inner all?'s return value: false, true, used to determine the outer block's return value
# outer block's return value: false, true, used to determine the outer select's return value
# outer select's return value: the called object which is evaluated as true on given outer block, so only [{ c: 'cat' }] will be returned.

# if any?
#=> [{ a: 'ant', b: 'elephant' }, { c: 'cat' }]

# since any? returns true if block ever returns a value other than false or nil
