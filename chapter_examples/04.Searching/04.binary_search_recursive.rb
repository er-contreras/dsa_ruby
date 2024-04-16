# frozen_string_literal: true

def binary_search_recursive(arr, value)
  binary_search_recursive_util(arr, 0, arr.size - 1, value)
end

def binary_search_recursive_util(arr, low, high, value)
  return false if low > high

  mid = low + (high - low) / 2

  if arr[mid] == value
    true
  elsif arr[mid] < value
    binary_search_recursive_util(arr, mid + 1, high, value)
  else
    binary_search_recursive_util(arr, low, mid - 1, value)
  end
end

# Testcases
p binary_search_recursive([1, 2, 3, 4, 5, 6], 6)
