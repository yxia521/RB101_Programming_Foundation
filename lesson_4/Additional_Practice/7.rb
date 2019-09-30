# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
hash = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each{|letter|
  frequency = statement.scan(letter).count
  hash[letter] = frequency if frequency > 0
}

p hash
