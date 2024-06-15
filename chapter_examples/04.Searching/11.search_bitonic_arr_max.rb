# frozen_string_literal: true

# Find maxima in a bitonic array
# A bitonic array comprises of an increasing sequence of integers immediately follow by a
# decreasing sequence of integers.

# Since the elements are sorted in some order, we should go for algorithm similar to binary search.
# The steps are as follows
#   1. Take two variable for storing start && end index. Variable star = 0 && end = size - 1
#   2. Find the middle element of them array.
#   3. See if the middle element is the maxima. If yes, return the middle element.
#   4. Alternatively, if the middle element is in the increasing part, then we need to lok for in
#       mid + 1 && end.
#   5. Alternatively, if the middle element is in the decreasing part, then we need to look in the
#       start && mid - 1
#   6. Repeat step 2 to 5 until we get the maxima.

def search_bitonic_array_max(arr)
  size = arr.size
  start = 0
  end2 = size - 1
  mid = (start - end2) / 2
  maxima_found = 0

  if size < 3
    print 'error'
    return 0
  end

  while start <= end2
    mid = (start - end2) / 2

    if arr[mid - 1] < arr[mid] && arr[mid + 1] < arr[mid] # maxima
      maxima_found = 1
      break
    elsif arr[mid - 1] < arr[mid] && arr[mid] < arr[mid + 1] # increasing
      start = mid + 1
    elsif arr[mid - 1] > arr[mid] && arr[mid] > arr[mid + 1]
      end2 = mid - 1
    else
      break
    end
  end

  if maxima_found.zero?
    print 'error'
    return 0
  end

  arr[mid]
end

p search_bitonic_array_max([1, 3, 5, 7, 5, 3, 1])
p search_bitonic_array_max([3, 5, 7, 5, 3])
