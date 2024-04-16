# frozen_string_literal: true

# Exhaustive search or brute force
# def print_repeating(arr)
#   size = arr.size
#   print 'Repeating elements are '
#   i = 0
#
#   while i < size
#     j = i + 1
#     while j < size
#       print ' ', arr[i] if arr[i] == arr[j]
#       j += 1
#     end
#     i += 1
#   end
# end

# Second Approach
# Sorting: Sort all the elements in the array and afterthis in a single scan, we can find the duplicates.
# def print_repeating(arr)
#   size = arr.size
#   arr = arr.sort
#   print ' Repeating elements are '
#
#   i = 1
#   while i < size
#     print ' ', arr[i] if arr[i] == arr[i - 1]
#
#     i += 1
#   end
# end

# Third Approach
# Hash-Table, using Hash-Table, we can keep track of the elements we have already
# seen and we can find the duplicates in just one scan.
# def print_repeating(arr)
#   size = arr.size
#   set = Set.new
#   print ' Repeating elements are '
#
#   i = 0
#   while i < size
#     if set.include?(arr[i])
#       print ' ', arr[i]
#     else
#       set.add(arr[i])
#     end
#
#     i += 1
#   end
# end

# Forth Approach
# Counting; this approach is only possible if we know the range of the input.
# If we know that, the elements in the array a re in the range 0 to n-1. We can reserve
# array of length n and when we see an element, we can increase its count. In just one single scan,
# we know the duplicates. If we know the rangeof the elements, then this is the fastest way to fin the duplicates.

def print_repeating(arr, range)
  size = arr.size
  count = Array.new(range + 1, 0)
  print ' Repeating elements are '

  i = 0
  while i < size
    if count[arr[i]] == 1
      print ' ', arr[i]
    else
      count[arr[i]] = count[arr[i]] + 1
    end
    i += 1
  end
end

p print_repeating([1, 2, 3, 2, 5, 1], 6)
