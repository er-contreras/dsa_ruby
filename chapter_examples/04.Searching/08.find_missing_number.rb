# frozen_string_literal: true

# In given array of n-1 elements, which are in the range of 1 to n. There are no duplicates in the
# array. One of the integer is missing. Find the missing element.

# First approach: Exhaustive search or Brute force, for each value in the range 1 to n, find if there
# is some element in array
# def find_missing_number(arr, range)
#   found = 0
#   size = arr.size
#
#   i = 0
#   while i < range
#     found = 0
#
#     j = 0
#     while j < size
#       if arr[j] == i
#         found = 1
#         break
#       end
#
#       j += 1
#     end
#
#     if found == 0
#       return i
#     end
#
#     i += 1
#   end
#
#   print 'missing number not found'
#
#   return -1
# end

def find_missing_number(arr, range)
  size = arr.size
  xor_sum = 0

  # get the XOR of all the numbers from 1 range
  i = 1
  while i <= range
    xor_sum ^= i
    i += 1
  end

  # loop through the array and get the XOR of elements
  i = 0
  while i < size
    xor_sum ^= arr[i]
    i += 1
  end

  xor_sum
end

p find_missing_number([1,2,3,4,6], 6)
