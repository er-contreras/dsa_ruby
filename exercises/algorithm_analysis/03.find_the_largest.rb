# Find the largest element in the array

def find_largest(arr)
  i = 0
  largest = 0

  while i < arr.length
    if largest < arr[i]
      largest = arr[i]
    end
    i += 1
  end

  largest
end
