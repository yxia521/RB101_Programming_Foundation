def short_long_short(string1, string2)
  if string1.size < string2.size # or string1.length
    puts string1 + string2 + string1
  else 
    puts string2 + string1 + string2
  end
end

short_long_short('abc', 'defgh') #=> "abcdefghabc"
short_long_short('abcde', 'fgh') #=> "fghabcdefgh"
short_long_short('', 'xyz') #=> "xyz"

# notice that we cannot use String#concat, String#<<, they are mutating strings.

# or writng this two strings as an array
# sort by length will return a new array starting the shortest, end with longest.
def short_long_short(string1, string2)
 array = [string1, string2].sort_by{|x| x.length} 
 array.first + array.last + array.first
end
