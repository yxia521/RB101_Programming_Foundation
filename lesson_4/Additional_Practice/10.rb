munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# PEDAC
# input: a hash
# output: a hash with age_group pair
# rules: a kid is in the age range 0 - 17, an adult is in the range 18 - 64 and a senior is aged 65+.

# Algorithm
# iteration thru each pair, based on their age, decide he/she belongs to what group
# in each iteration, add a new pair to the hash value

def age_group(age)
  case 
  when 17 >= age && age >= 0
    return "kid"
  when 64 >= age && age >= 18
    return "adult"
  when age > 65
    return "senior"
  end
end

p munsters.each{|k, v| v["age_group"] = age_group(v["age"])}

#=> { "Herman"=>{"age"=>32, "gender"=>"male", "age_group"=>"adult"}, 
#    "Lily"=>{"age"=>30, "gender"=>"female", "age_group"=>"adult"}, 
#    "Grandpa"=>{"age"=>402, "gender"=>"male", "age_group"=>"senior"}, 
#    "Eddie"=>{"age"=>10, "gender"=>"male", "age_group"=>"kid"}, 
#    "Marilyn"=>{"age"=>23, "gender"=>"female", "age_group"=>"adult"} }
