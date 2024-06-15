# frozen_string_literal: true

# A bitonic array comprises of an increasing sequence of integers immediately follow by a
# decreasing sequence of integers. To search an element in a bitonic array.
#   1. Find the index or maximum element in array. By finding the end of increasing part of the
#     array, using modified binary search.
#   2. Once we have the maximum element, search the given value in increasing part of the array
#     using binary search.
#   3. If the value is not found in increasing part, search the same value in decreasing part of the
#     array using binary search.

def search_bitonic_array(arr, key)
  size = arr.size
  max = find_max_bitonic_array(arr, size)

  # puts max
  k = binary_search(arr, 0, max, true)

  if k != -1
    return k
  else
    return binary_search(arr, max + 1, size - 1, key, false)
  end
end

def find_max_bitonic_array(arr, size)
  start = 0
  end2 = size - 1

  if size < 3
    print 'error'
    return 0
  end

  while start <= end2
    mid = (start + end2) / 2

    if arr[mid - 1] < arr[mid] and arr[mid + 1] < arr[mid] # maxima
      return mid
    elsif arr[mid - 1] < arr[mid] and arr[mid] < arr[mid + 1] # increasing
      start = mid + 1
    elsif arr[mid - 1] > arr[mid] and arr[mid] > arr[mid + 1] # decreasing
      end2 = mid - 1
    else
      break
    end
  end

  print 'error'
  return 0
end

def binary_search(arr, start, end2, key, isInc)
  if end2 < start
    return -1
  end

  mid = (start + end2) / 2

  # puts "mid is #{mid}"

  if key == arr[mid]
    return mid
  end

  if (isInc == true and key < arr[mid]) or (isInc == false and key > arr[mid])
    return binary_search(arr, start, mid - 1, key, isInc)
  else
    return binary_search(arr, mid + 1, end2, key, isInc)
  end
end
