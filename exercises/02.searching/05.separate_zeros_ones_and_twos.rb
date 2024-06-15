# In a given array of 0's, 1's and 2's, write a program to separate 0's, 1's and 2's

def separate_zeros_ones_and_twos(arr)
  swap(arr, 0) 
  swap(arr, 1) 

  arr
end

def swap(arr, num)
  i = 0
  j = arr.length - 1

  while i < j
    if arr[i] > num && arr[j] == num
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp

      i += 1
      j -= 1
    elsif arr[i] > num && arr[j] > num
      j -= 1
    else
      i += 1
    end
  end
end

p separate_zeros_ones_and_twos([2, 1, 0, 2, 1, 0])
p separate_zeros_ones_and_twos([0, 1, 2, 0, 1, 2])
p separate_zeros_ones_and_twos([1, 2, 0, 1, 2, 0])
