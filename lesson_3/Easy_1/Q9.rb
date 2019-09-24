flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

# Turn this into an array containing only two elements: Barney's name and Barney's number
flintstones.keep_if{|key| key == "Barney"}
flintstones.flatten
#=> ["Barney", 2]

# or flintstones.assoc("Barney")
# assoc(obj) → an_array or nil
