# In a given array of 1's and 0's, write a program to separate 0's from 1's.
# Hint: QuickSelect, counting.

def separate_zeros_from_ones(arr, right = 1, left = 0)
  i = 0
  j = arr.length - 1

  while i < j
    if arr[i] == right && arr[j] == left
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp

      i += 1
      j -= 1
    elsif arr[i] == left
      i += 1
    else
      j -= 1
    end
  end

  arr
end

p separate_zeros_from_ones([1, 0, 1, 0, 1, 0]) # => [0, 0, 0, 1, 1, 1]
p separate_zeros_from_ones([1, 1, 1, 0, 0, 0]) # => [0, 0, 0, 1, 1, 1]
p separate_zeros_from_ones([0, 0, 0, 1, 1, 1]) # => [0, 0, 0, 1, 1, 1]
p separate_zeros_from_ones([0, 0, 1, 1, 0, 0]) # => [0, 0, 0, 0, 1, 1]
p separate_zeros_from_ones([0, 0, 1, 1, 0, 0], 0, 1) # => [1, 1, 0, 0, 0, 0]
p separate_zeros_from_ones([1, 0, 1, 1, 0, 1], 0, 1) # => [1, 1, 1, 1, 0, 0]
