# the total age of just the male members of the family.

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

current_age = []
munsters.each_value do |info|
  current_age << info["age"] if info["gender"] == "male"  
end
p current_age.sum
# => 444



# ====== Below are WRONG codes I initially wrote ======
# age_arr = munsters.map do |person|
#   person[1]["age"] if person[1]["gender"] == "male"  
# end
#=> [32, nil, 402, 10, nil] 

# age_arr.delete(nil).sum 
# I want to delete all nils and sum up all integers
# =====================================================

# ErrorMSG: NoMethodError (undefined method `sum' for nil:NilClass)

# the map method block is right
# last line is WRONG 
# delete method deletes all items from self that are equal to argument passed to
# so delete(nil) returns nil instead of [32, 402, 10], and nil doesn't implement sum

# FIX:
# age_arr.delete(nil)
# age_arr.sum


