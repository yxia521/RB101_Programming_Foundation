# 'Bob' is assigned to save_name, save_name refences the same object that name is referencing
# Reassign 'Alice' to name, now name references 'Alice', and save_name still references 'Bob'
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
#=> Alice
#=> Bob


# .upcase with exclamation mark mutates the object that name is referencing, previously Bob, now BOB
# name is rereferencing a new object
# the original object is mutated to BOB
# so save_name and name are still referencing to the same object, which now is BOB
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name
#=> BOB
#=> BOB
