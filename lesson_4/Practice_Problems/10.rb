# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

#=> [1, nil, nil]

# 1st iteration, if statement is false, so go with num, the block returns number 1, which is always true
# 2nd and 3rd iteraiton, if statement is true, so only executes puts num, codes after that will not be executed.
# and we know puts always return nil.
