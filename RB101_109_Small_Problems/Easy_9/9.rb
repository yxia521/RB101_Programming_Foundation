# Grade book
# Write a method that determines the mean (average) of the three scores 
# passed to it, and returns the letter value associated with that grade.

# Numerical Score Letter  Grade
# 90 <= score <= 100  'A'
# 80 <= score < 90  'B'
# 70 <= score < 80  'C'
# 60 <= score < 70  'D'
# 0 <= score < 60 'F'
# Tested values are all between 0 and 100. There is no need to check for 
# negative values or values greater than 100.

# input
#   - 3 integers
# output
#   - a string, which stands for the grade 
# rule:
#   - get the average of 3 integer 
#   - return the corresponding grade 
# algo:
#   1. get 3 integers
#   2. initialize a average variable, calculate the ave, /3 assigned to average
#   3. case: if average >= 90 && average <= 100, return 'A'
#            if   return 'B'

def what_grade?(average)
  case
  when average >= 90 && average <= 100
    'A'
  when average >= 80 && average < 90
    'B'
  when average >= 70 && average < 80
    'C'
  when average >= 60 && average < 70
    'D'
  when average >= 0 && average < 60
    'F'  
  end
end

def get_grade(score1, score2, score3)
  average = (score1+score2+score3) / 3 # notice here
  what_grade?(average)
end

# --- ls sol ---

def get_grade(s1, s2, s3)
  average = (s1+s2+s3)/3
  case average
  when 90..100 then 'A'
  when 80..89 then 'B'
  when 70..79 then 'C'
  when 60..69 then 'D'
  else             'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

