# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

#=> [a, 'ant']

# find under Hash#shift
# shift removes its first key-value pair
# returns a two-item array [key, value]

