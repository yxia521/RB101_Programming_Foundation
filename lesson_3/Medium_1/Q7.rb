munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Just remember, [] on a Hash mutates the hash, index assignment usually mutates
# In value, we're not mutating "age" and "gender",
# we're referencing "age" and "gender" to different objects, so oid changes
# since each value is mutated, the whole munsters Hash is mutates,
# but the oid won't change, so the Hash points to the same physical space in memory
def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42 # This is NOT variable reassignment
    family_member["gender"] = "other"
  end
end

# the family's data will get ransacked.
puts mess_with_demographics(munsters)
puts munsters
