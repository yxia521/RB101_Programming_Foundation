# the final values of a and b?

a = 2
b = [5, 8]
arr = [a, b] # [2, [5, 8]]

arr[0] += 2 # [4, [5, 8]], a still points to the same obj 2, 
            # we're just assigning a new obj 4 to index 0 of arr, arr[0] modified, not a

arr[1][0] -= a # a still points to the same obj so [4, [3, 8]]
# => arr = [4, [3, 8]]

# a's final value 2
# b's final value [3, 8]
