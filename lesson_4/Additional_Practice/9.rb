# titleize the string

words = "the flintstones rock"
words.split.each{|word| word.capitalize!}.join(' ')

#=> "The Flintstones Rock"

