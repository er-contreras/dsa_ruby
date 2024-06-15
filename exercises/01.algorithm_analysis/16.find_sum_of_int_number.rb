# frozen_string_literal: true

# Write a method to find the sum of every number in an int number.
# Example: input = 1984, output should be 32 (1+9+8+4).

def find_sum_of_int_number(int)
  i = 0

  arr = int.to_s.chars
  new_arr = []

  while i < arr.length
    new_arr[new_arr.length] = arr[i].to_i
    i += 1
  end

  j = 0
  sum = 0

  while j < new_arr.length
    sum += new_arr[j]
    j += 1
  end

  sum
end
