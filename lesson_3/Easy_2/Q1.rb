ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.include?("Spot")

# bonus
ages.any?("Spot")

# or
ages.has_key?("Spot")

# or
ages.key?("Spot")

# or 
ages.member?("Spot")
