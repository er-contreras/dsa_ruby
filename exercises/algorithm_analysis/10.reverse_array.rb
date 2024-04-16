# frozen_string_literal: true

# Reverse an array in-place. (You cannot use any additional array in other wards Space Complexity should be O(1).)
# Hint: Use two variable, start and end . Start set to 0 and end set to (n-1). Increments starts and decrement ends.
# Swap the values stored at arr[start] and arr[end]. Stop when start is equal to end or start is greater  than end.
def reverse(arr, start, end1)
  i = start
  j = end1

  while i < j
    temp = arr[i]
    arr[i] = arr[j]
    arr[j] = temp

    i += 1
    j -= 1
  end
end

def rotate_array(arr)
  n = arr.length
  reverse(arr, 0, n - 1)
  arr
end
