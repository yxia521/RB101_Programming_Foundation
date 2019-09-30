# What is the block's return value in the following code? How is it determined? Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

#=> 1

# block's return value will be an array: [true, false] since num.odd? is the last expression, which returns a boolean
# return value of any? is: 1
# any? passes each element, returns true if the block ever returns value other than false or nil
# what interesting here is the first element is true, so any? will stop iteration (one true will always true for any?)
# so after first iteration, ruby stops running, puts num will only be executed once.
