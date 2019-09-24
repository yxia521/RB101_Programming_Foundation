flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# add the family pet "Dino" to our usual array
p flintstones << "Dino"

# or
# concat(other_ary1, other_ary2, ...) → ary
p flintstones.concat(["Dino"]) # dino must be Array
# or
p flintstones.push("Dino")
