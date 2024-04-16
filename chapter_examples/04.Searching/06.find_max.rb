# frozen_string_literal: true

# In a given array of n numbers, find the element, which appears maximum number of times.

# First Approach: Exhaustive search or brute force; for each element in array, find how many
# times this particular value appears in array. Keep track of the max_count and when some element
# count is greater than max_count then update the max_count. This is done using two for loop, first
# loop to select the element and second loop to count the occurrence of that element.

# def get_max_count(arr)
#   size = arr.size
#   max = 0
#   count = 0
#   max_count = 0
#
#   i = 0
#   while i < size
#     j = i + 1
#     while j < size
#       count += 1 if arr[i] == arr[j]
#
#       j += 1
#     end
#
#     if count > max_count
#       max = arr[i]
#       max_count = count
#     end
#
#     count = 0
#     i += 1
#   end
#
#   max
# end

# Second Approach: Sorting; Sort all the elements in the array and after this in a single scan, we
# can find the counts. Sorting algorithms takes O(n.logn) time and single scan takes O(n) time.
# The time complexity of an algorithm is O(n.logn) and Space Complexity is O(1)

# def get_max_count(arr)
#   size = arr.size
#   max = arr[0]
#   max_count = 1
#   curr = arr[0]
#   curr_count = 1
#   arr = arr.sort
#
#   i = 0
#   while i < size
#     if arr[i] == arr[i - 1]
#       curr_count += 1
#     else
#       curr_count = 1
#       curr = arr[i]
#     end
#
#     if curr_count > max_count
#       max_count = curr_count
#       max = curr
#     end
#
#     i += 1
#   end
#
#   max
# end

# Third Approach: Counting, this approach is possible only if we know the range of the input. If
# we know that, the elements in the array are in the range 0 to n-1. We can reserve an array of
# length n and when we see an element, we can increase its count. In just one single scan, we
# know the duplicates. If we know the range of the elements, then this is the fastest way to find the
# max count.

def get_max_count(arr, range)
  size = arr.size
  max = arr[0]
  max_count = 1
  count = Array.new(range + 1, 0)

  i = 0
  while i < size
    count[arr[i]] = count[arr[i]] + 1

    if count[arr[i]] > max_count
      max_count = count[arr[i]]
      max = arr[i]
    end

    i += 1
  end

  max
end

p get_max_count([6, 3, 1, 2, 8, 7, 1, 4], 8)
