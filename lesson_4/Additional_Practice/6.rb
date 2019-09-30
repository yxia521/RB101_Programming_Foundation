# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map!{|name| p name[0, 3]} # map! will return a new transformed array: ["Fre", "Bar", "Wil", "Bet", "Bam", "Peb"] 

# flintstones.select!{|name| p name[0, 3]} will return nil, because p is the last expression, always return nil.
# here, select! map! will result in the same
