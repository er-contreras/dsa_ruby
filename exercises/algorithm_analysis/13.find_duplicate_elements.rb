# frozen_string_literal: true

# Find the duplicate elements in an array of size n where each element is in the range of
# 0 to n-1
# Hint:
# Approach 1: Compare each element with all the elements of the array (using two loops)
# O(n^2) solution.
# Approach 2: Maintain a Hash-Table. Set the hash value to 1 if we encounter the element for the first time.
# When we put the same value again we can see that hash value is already 1 so we can print the value.
# O(n) solution, but additional space is required.
# Approach 3: We will exploit the constraint "every element is in the range 0 to n-1". We can take
# an array arr[] of size n and set all the elements to 0. Whenever we set a value say val1.
# We will increment the value at arr[var1] index by 1. in the end, we can traverse the array arr and print
# the repeated values. Additional Space Complexity will be O(n) which will be less than Hash-Table approach.

# Approach 1
# def find_duplicate_numbers(arr)
#   i = 0
#   dupl = []
#
#   while i < arr.length
#     j = i
#
#     while j < arr.length - 1
#       if arr[i] == arr[j + 1]
#         dupl[i] = arr[i]
#       end
#       j += 1
#     end
#     i += 1
#   end
#
#   dupl
# end

# Approach 2
def find_duplicate_numbers(arr)
  hash = Hash.new(0)

  i = 0
  while i < arr.length
    hash[arr[i]] += 1
    i += 1
  end

  keys = hash.keys
  duplicates = []

  j = 0
  while j < keys.length
    if hash[keys[j]] > 1
      duplicates[duplicates.length] = keys[j]
    end
    j += 1
  end

  duplicates
end
