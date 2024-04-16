# frozen_string_literal: true

# First approach: Exhaustive search or brute force, for each element in array find how many times
# this particular value appears in array. Keep track of the max_count and when some element count is greater
# than max_count then update the max_count. This is done using two for loop, first loop to select
# the element and second loop to count the ocurrence of the element.

def get_majority(arr)
  size = arr.size
  max = 0
  count = 1
  max_count = 0

  i = 0
  while i < size
    j = i + 1
    while j < size
      count += 1 if arr[i] == arr[j]

      j += 1
    end

    return arr[i] if count > size / 2

    count = 1
    i += 1
  end

  print ' no majority found'
  -1
end

p get_majority([2, 1, 3, 5, 4, 6, 1, 3, 1])
