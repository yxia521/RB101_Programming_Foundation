# Triangle Sides
# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must 
# be greater than the length of the longest side, and all sides must have lengths 
# greater than 0: if either of these conditions is not satisfied, 
# the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, 
# and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending 
# on whether the triangle is equilateral, isosceles, scalene, or invalid.

# check if it's valid triange
  # find the max side, calculate if the other two's sum is > max
# if no, return invalid
# if yes, then determine 

def triangle(side1, side2, side3)
  return :equilateral if side1 == side2 && side2 == side3 

  all_sides = [side1, side2, side3]
  max = all_sides.max
  if all_sides.count(max) > 1 
    two_short_sides = all_sides.uniq 
  else
    all_sides.delete(max)
    two_short_sides = all_sides
  end

  if two_short_sides.sum < max || all_sides.any?{|side| side <= 0}
    :invalid
  elsif side1 != side2 && side1 != side3 && side2 != side3 
    :scalene
  else 
    :isosceles
  end
end

# --- ls sol ---

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side > sides.reduce(:+), sides.include?(0) # , can be written as ||
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
p triangle(2, 3, -1) == :invalid
 
