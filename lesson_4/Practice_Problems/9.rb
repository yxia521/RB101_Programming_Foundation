# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

#=> [nil, "bear"]

# maps retuns a new array
# when none of condition in if statement evaluates as true, the if statement returns nil
# so the first element 'ant' is evaluated as false, the value will not be returne and if will return false.

