# frozen_string_literal: true

# Given an array of 0s and 1s. We need to sort it so that all the 0s are places before all 1s.
# Hint: Use two variable, start and end. Start set to 0 and end set to (n-1). Increments starts
# and decrements ends. Swap the values stored at arr[start] and arr[end] only when arr[start] == 1
# and arr[end] == 0. Stop when start is equal to end or start is greater than end.

def sort_binary(arr)
  n = arr.length
  sort(arr, 0, n - 1)
  arr
end

def sort(arr, start, end1)
  i = start
  j = end1

  my_while(arr, i, j)
end

def my_while(arr, i, j)
  while i < j
    if arr[i] == 1 && arr[j].zero?
      tmp = arr[i]
      arr[i] = arr[j]
      arr[j] = tmp
    elsif arr[i].zero? && arr[j].zero?
      i += 1
    elsif arr[i] == 1 && arr[j] == 1
      j -= 1
    else
      i += 1
      j -= 1
    end
  end
end
