# frozen_string_literal: true

def find_average(arr)
  i = 0
  sum = 0

  while i < arr.length
    sum += arr[i]
    i += 1
  end

  result = (sum % arr.length).zero?

  !result ? sum.to_f / arr.length : sum / arr.length
end
