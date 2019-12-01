array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo) # array1 = [Moe, Larry, Curly, Shemp, Harpo, Chico, Groucho, Zeppo]
array2 = []
array1.each { |value| array2 << value } 
# array2 = [Moe, Larry, Curly, Shemp, Harpo, Chico, Groucho, Zeppo]
# array1 = [Moe, Larry, Curly, Shemp, Harpo, Chico, Groucho, Zeppo]
array1.each { |value| value.upcase! if value.start_with?('C', 'S') } # array1 = [Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo]
puts array2
#=> Moe
#Larry
#CURLY
#SHEMP
#Harpo
#CHICO
#Groucho
#Zeppo



