# frozen_string_literal: true

def linear_search_unsorted(arr, value)
  i = 0
  size = arr.size

  while i < size
    if value == arr[i]
      return true
    end

    i += 1
  end

  return false
end

# Test Case
search = linear_search_unsorted([2, 1, 6, 4, 3], 6)
search2 = linear_search_unsorted([2, 1, 6, 4, 3], 5)
p search
p search2
