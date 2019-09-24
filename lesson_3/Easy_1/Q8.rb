flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

# Make this into an un-nested array
# .flatten(level) -> new_array
p flintstones.flatten!
