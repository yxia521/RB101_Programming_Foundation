# returns a new string that contains the value of the original string with 
# all consecutive duplicate characters collapsed into a single character. 

def crunch(string)
  output = []
  string.chars.each { |char| output << char unless output.last == char }
  output.join
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
  
