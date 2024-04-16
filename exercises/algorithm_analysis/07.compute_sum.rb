# frozen_string_literal: true

# Write a method to compute Sum(N) = 1+2+3+...+N

def sum_n(arr)
  i = 0
  sum = 0

  while i < arr.length
    sum += arr[i]

    i += 1
  end

  sum
end
