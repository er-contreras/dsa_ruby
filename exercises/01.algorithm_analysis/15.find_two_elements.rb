# frozen_string_literal: true

# Given an array with 'n' elements & a value 'x', find two elements in the array that sums 'x'.
# Hint:
# Approach 1: Sort the array.
# Approach 2: Using a Hash-Table.

# def find_two_elements(arr, value)
#   i = 0
#   ary = []
#
#   while i < arr.length
#     j = i
#
#     while j < arr.length - 1
#       sum = arr[i] + arr[j + 1]
#
#       if sum == value
#         ary[ary.length] = arr[i]
#         ary[ary.length] = arr[j + 1]
#       end
#       j += 1
#     end
#     i += 1
#   end
#
#   ary
# end

# Approach 2
def find_two_elements(arr, value)
  hash = {}

  i = 0
  while i < arr.length
    diff = value - arr[i]

    return [arr[hash[diff]], arr[i]] if hash[diff]

    hash[arr[i]] = i

    i += 1
  end
end
