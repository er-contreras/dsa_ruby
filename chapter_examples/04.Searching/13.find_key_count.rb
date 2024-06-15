# frozen_string_literal: true

# Given a sorted array arr[] find the number of ocurrences of a number.

# First approach: Brute force, Traverse the array in linear time we will get the ocurrence
# count of the number. This is done using the loop.

# def find_key_count(arr, key)
#   size = arr.size
#   count = 0
#
#   i = 0
#   while i < size
#     if arr[i] == key
#       count += 1
#     end
#     i += 1
#   end
#
#   count
# end

# p find_key_count([8, 2, 5, 2, 7], 5)

# Second approach: Since we have sorted array, we should think about some binary search.
#   1. First, we should find the first ocurrence of the key.
#   2. Then we should find the last ocurrence of the key.
#   3. Take the difference of this two values and you will have the solution.

def find_first_index(arr, start, end2, key)
  return -1 if end2 < start

  mid = (start + end2) / 2

  return mid if key == arr[mid] && (mid == start || arr[mid - 1] != key)

  return find_first_index(arr, start, mid - 1, key) if key <= arr[mid] # <= is us the number.t in sorted array.

  find_first_index(arr, mid + 1, end2, key)
end

def find_last_index(arr, start, end2, key)
  if end2 < start
    return -1
  end

  mid = (start + end2) / 2

  if key == arr[mid] and (mid == end2 or arr[mid + 1] != key)
    return mid
  end

  if key < arr[mid]
    return find_last_index(arr, start, mid - 1, key)
  else
    return find_last_index(arr, mid + 1, end2, key)
  end
end


def find_key_count(arr, key)
  size = arr.size

  first_index = find_first_index(arr, 0, size - 1, key)
  last_index = find_last_index(arr, 0, size - 1, key)

  return (last_index - first_index + 1)
end

p find_key_count([1,2,3,4,5], 4)
p find_key_count([1,1,3,4,5], 4)
p find_key_count([1,2,4,4,5], 4)
p find_key_count([1,4,4,4,5,6,7,8,9], 4)
