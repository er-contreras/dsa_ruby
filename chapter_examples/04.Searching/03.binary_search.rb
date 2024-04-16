# frozen_string_literal: true

def binary_search(arr, value)
  low = 0
  high = arr.size - 1

  while low <= high
    mid = low + (high - low) / 2

    if arr[mid] == value
      return true
    elsif arr[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end

  false
end

# Testcases
p binary_search([1, 2, 3, 4, 5, 6], 1)
