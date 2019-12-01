#  takes an array of strings, returns an array of the same string values, 
# except with the vowels (a, e, i, o, u) removed.

# what I initially did
# WRONG bc %w(abcdefghijklmnopqrstuvwxyz) is "abcdefghijklmnopqrstuvwxyz"
# instead of "a, b, c,..."

# def remove_vowels(arr)
#   vowels = 'aeiouAEIOU'
#   arr.delete_if{|el| vowels.include?(el)}
#   arr
# end

########## FIX ###########
def remove_vowels(arr)
  vowels = 'aeiouAEIOU'
  arr.map{|el| el.delete(vowels)}
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
