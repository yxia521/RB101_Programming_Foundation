# n = 5
# initially, off

# algo:
# 1: 1*1, 1*2, 1*3, 1*4 1*5 on, toggle: [1, 2, 3, 4, 5]
# 2: 2*1, 2*2, 2*3, ..                  [2, 4]
# 3: 3*1, 3*2, 3*3, ..                  [3]
# 4: 4*1, 4*2, 4*3, ..                  [4]
# 5: 5*1, 5*2, 5*3 ..                   [5]
# ----------- simplier version ------------------
# 1. give a number, form an array from 1 upto this number: [1, ..., n]
# 2. find the sub array
#   - bigger loop # from 1 to n
#     - inner loop 
#       - find the multiple of that starting number, put it into an array
#     end
#   end
# times_of_toggle to count how many times we toggle each light
#  - it's odd, off
#  - it's even, on
# return an array of all of lights which is on

# ------------ pseudo code -----------------------
# def toggle_lights(n)
#   form an array [1..n]: (1..n).to_a
#   initialize an array: multipled_substring = []
#   bigger loop: (1..n).each do |count|

#     inner loop
#       multiplier = 1
#       product = count * multiplier
#       mutipled_substring << product
#       multiplier += 1
#       break if
#      end

#   end

#   p multipled_substring 

#   # count how many times each element showed up
#   final_result = []
#   (1..n).each do |times|
#   times_of_toggle = multipled_substring.count(times)
  
#   # check odd or even
#   # return sth if times_of_toggle.odd? # off
#   times if times_of_toggle.even? # on
#   final_result << times
#   end
#   p final_result 
# end
# ---------------------------------------------------

def toggle_lights(n)
  multipled_substring = []

  (1..n).each do |count|
    multiplier = 1

    loop do
      product = count * multiplier
      break if product > n
      multipled_substring << product
      multiplier += 1
    end
  end
  #multipled_substring

  final_result = []
  (1..n).each do |number|
   times_of_toggle = multipled_substring.count(number)
    
  final_result << number if times_of_toggle.odd?
  end
  p final_result
end

toggle_lights(5) == [1, 4]
toggle_lights(1000)














