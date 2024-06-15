# frozen_string_literal: true

# Two elements whose sum is closest to zero

# In a given array of integers, both +ve and -ve. You need to find the two elements such that their
# such that theirs is closest to zero.

# First approach: Exhaustive search or Brute force: for each element in the array find the other
# element whose value when added will give minimum absolute value. This is done using two for
# loop, first loop to select the element and second loop to find the element that should be added to
# it so that the absolute of the sum will be minimum or close to zero.

# def min_abs_sum_pair(arr)
#   size = arr.size
#
#   # array should have at least two elements
#   if size < 2
#     print 'Invalid Input'
#     return
#   end
#
#   # Initialization of values
#   min_first = 0
#   min_second = 1
#   min_sum = (arr[0] + arr[1]).abs
#
#   i = 0
#   while i < size - 1
#     r = i + 1
#     while r < size
#       sum = (arr[i] + arr[r]).abs
#
#       if sum < min_sum
#         min_sum = sum
#         min_first = i
#         min_second = r
#       end
#       r += 1
#     end
#     i += 1
#   end
#
#   # puts "The two elements with minimum sum are: #{arr[min_first]}, #{arr[min_second]}"
#
#   p [arr[min_first], arr[min_second]]
# end

# Second approach: Sorting

# Steps are as follows:
#   1. Sort all the elements in the array
#   2. Take two variable first_index = 0 and second_index = n - 1
#   3. Compute sum = arr[first_index] + arr[second_index]
#   4. If the sum is equal to 0 then we have the solution.
#   5. If the sum is less than 0 then we will increase first
#   6. If the sum is greater than 0 then we will decrease second
#   7. We repeat the above process 3 to 6, until we get the desire pair or we get first >= second

def min_abs_sum_pair(arr)
  size = arr.size
  # Array should have at least two elements
  if size < 2
    print 'Invalid Input'
    return
  end

  arr = arr.sort

  # Initialization of values
  min_first = 0
  min_second = size - 1
  min_sum = (arr[min_first] + arr[min_second])

  l = 0
  r = size - 1

  while l < r
    sum = (arr[l] + arr[r])

    if sum.abs < min_sum
      min_sum = sum
      min_first = l
      min_second = r
    end

    if sum.negative?
      l += 1
    elsif sum.positive?
      r -= 1
    else
      break
    end
  end

  p [arr[min_first], arr[min_second]]
end

min_abs_sum_pair([1, 2, 3, 4, 5, 6])
min_abs_sum_pair([6, 5, 4, 3, 2, 1])
min_abs_sum_pair([3, 4, 6, 1, 3, 8, 12, 0])
min_abs_sum_pair([3, 4, 6, 1, 3, 8, -12, 0])
