# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

p flintstones.index{|value| value.start_with?("Be")}
# p flintstones.index{|value| value[0, 2] == "Be"}

