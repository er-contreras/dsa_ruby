# frozen_string_literal: true

# Find the sum  of all the elements of a two dimensional array
def find_sum(arr)
  i = 0
  sum = 0

  while i < arr.length
    j = 0

    while j < arr[i].length
      sum += arr[i][j]

      j += 1
    end
    i += 1
  end

  sum
end
