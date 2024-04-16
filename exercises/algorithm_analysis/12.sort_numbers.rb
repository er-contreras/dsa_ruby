# frozen_string_literal: true

# Given an array of 0s, 1s and 2s. We need to sort it so that all the 0s are placed before all
# the 1s and all the 1s are place before 2s.
# Hint: Same as above first think 0s and 1s as one group and move all the 2s on the right side.
# Then do a second pass over the array to sort 0s and 1s.

def sort_numbers(arr)
  n = arr.length
  i = 0
  j = n - 1

  while i < j
    if arr[i] == 2 && (arr[j].zero? || arr[j] == 1)
      tmp = arr[i]
      arr[i] = arr[j]
      arr[j] = tmp
    elsif arr[i] == 2 && arr[j] == 2
      i += 1
      j -= 1
    elsif arr[i] == 1 && arr[j] == 2
      i += 1
      j -= 1
    elsif arr[i] == 0 && arr[j] == 2
      i += 1
      j -= 1
    elsif arr[i] == 0 && arr[j] == 1
      i += 1
    elsif arr[i] == 1 && arr[j] == 1
      i += 1
    else
      i += 1
    end
  end

  i = 0
  j = n - 1
  sort_my_binary(arr, i, j)
  arr
end

def sort_my_binary(arr, i, j)
  while i < j
    if arr[i] == 1 && arr[j].zero?
      tmp = arr[i]
      arr[i] = arr[j]
      arr[j] = tmp
    elsif arr[i].zero? && arr[j].zero?
      i += 1
    elsif arr[i] == 1 && arr[j] == 1
      j -= 1
    elsif arr[i] == 1 && arr[j] == 2
      j -= 1
    else
      i += 1
      j -= 1
    end
  end
end
