# frozen_string_literal: true

# Find the maximum element in a sorted and rotated array. Complexity: O(logn)
# Hint: Use binary search algorithm.

def find_element(arr)
  size = arr.length
  low = 0
  high = size - 1
  value = find_largest(arr)

  while low <= high
    mid = low + (high - low) / 2
    if arr[mid] == value
      return arr[mid]
    elsif arr[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end

  false
end

def find_largest(arr)
  i = 0
  largest = 0

  while i < arr.length
    largest = arr[i] if largest < arr[i]
    i += 1
  end

  largest
end

def find_element_with_rotated_array(arr)
  size = arr.length
  low = 0
  high = size - 1
  value = find_largest(arr)

  while low <= high
    mid = low + (high - low) / 2
    if arr[mid] == value
      return arr[mid]
    elsif arr[mid] > value
      low = mid + 1
    else
      high = mid - 1
    end
  end

  false
end
