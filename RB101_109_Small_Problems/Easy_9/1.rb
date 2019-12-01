# Welcome Stranger
# Create a method that takes 2 arguments, an array and a hash. 
# The array will contain 2 or more elements that, when combined with 
# adjoining spaces, will produce a person's name. The hash will contain 
# two keys, :title and :occupation, and the appropriate values. 
# Your method should return a greeting that uses the person's full name, 
# and mentions the person's title and occupation.

# input
#   - an array: 2 or more elements
#   - a hash: :title, :occupation
# output
#   - a new string
# rules:
#   - print out a string containing the value of the array and hash
# algorithm:
#   - get the input
#   - use string indentation
#     - array[index]
#     - hash[:title] 
#     - hash[:occupation]

# def greetings(array, hash)
#   name = ''
#   values = '' 
#   array.each do |word| 
#     name << ' '
#     name << word
#   end
#   values = hash[:title] + ' ' + hash[:occupation]
#   puts "Hello,#{name}! Nice to have a #{values} around."
# end

### ls sol ###
def greetings(name, status)
  puts "Hello, #{name.join(' ')}! Nice to have a \
#{status[:title]} #{status[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
greetings(['Birdie', 'Whitening'],{ title: 'Master', occupation: 'Destroyer'})
