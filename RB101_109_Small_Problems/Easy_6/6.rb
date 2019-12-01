# Combining Arrays
# takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

def merge(arr1, arr2)
  new_arr = arr1.concat(arr2)
  new_arr.uniq!
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

# OR
def merge(arr1, arr2)
  arr1 | arr2 # equivalent: arr1.union(arr2), union two arrays, no duplications
end

# intersect: arr1 & arr2 == [3]
