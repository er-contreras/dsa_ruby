# frozen_string_literal: true

def linear_search_sorted(arr, value)
  i = 0
  size = arr.size

  while i < size
    if value == arr[i]
      return true
    elsif value < arr[i]
      return false
    end

    i += 1
  end

  return false
end

# Testcase
search = linear_search_sorted([1, 2, 3, 4, 5, 6], 4)
search2 = linear_search_sorted([1, 2, 3, 4, 5, 6], 3)
search3 = linear_search_sorted([1, 2, 3, 4, 5, 6], 5)
search4 = linear_search_sorted([1, 2, 3, 4, 5, 6], 9)

p search
p search2
p search3
p search4
