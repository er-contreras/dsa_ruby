# frozen_string_literal: true

# Print all the maxima's in an array. (A values is a maximum if the value before and after its
# index are smaller than it does or does not exist.)
# Hint: Start traversing array from the end and keep track of the max element. If
# we encounter an element whose value is grater then max, print the lement and update max.

def all_maximas(arr)
  i = 0
  max = 0

  while i < arr.length
    max = arr[i] if max < arr[i]
    i += 1
  end

  max
end
