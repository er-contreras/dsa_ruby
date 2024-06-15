# In a given array of -ve and +ve numbers, write a program to separate -ve numbers from the
# +ve numbers.

def separate_numbers(arr)
  i = 0
  j = arr.length - 1

  while i < j
    if arr[i] < 0 && arr[j] > 0
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp

      i += 1
      j -= 1
    elsif arr[i] < 0 && arr[j] < 0
      j -= 1
    else
      i += 1
    end
  end

  arr
end

p separate_numbers([1, -1, -3, 3, 1, 4]) # => [1, 3, 1, 4, -1, -3]
p separate_numbers([1, -1, -3, 3, 1, -4]) # => [1, 3, 1, -4, -1, -3]
p separate_numbers([-1, -1, -1, 1, 1, 1]) # => [1, 1, 1, -1, -1, -1]
p separate_numbers([1, 1, 1, -1, -1, -1]) # => [1, 1, 1, -1, -1, -1]
p separate_numbers([1, 1, -1, -1, 1, 1]) # => [1, 1, 1, 1, -1, -1]
