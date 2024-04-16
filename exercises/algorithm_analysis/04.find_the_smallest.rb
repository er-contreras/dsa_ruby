# Find the smallest element in the array

def find_smallest(arr)
  i = 0
  smallest = 0

  while i < arr.length
    smallest = arr[i] if smallest >= arr[i]
    i += 1
  end

  smallest
end
