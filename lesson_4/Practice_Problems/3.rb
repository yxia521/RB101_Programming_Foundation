# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

#=> [1, 2, 3]

# find under Array#reject
# returns a new array containing the iterm in self where the given block's return value is "falsey"
# puts always return nil, which is "falsey", so the element will be selected and returned.
