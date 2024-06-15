# frozen_string_literal: true

# Find the second largest element in the array
def find_second_largest(arr)
  i = 0
  my_arr = [0, 0]

  while i < arr.length
    if arr[i] >= my_arr[0]
      my_arr[1] = my_arr[0]
      my_arr[0] = arr[i]
    elsif arr[i] > my_arr[1]
      my_arr[1] = arr[i]
    end

    i += 1
  end

  my_arr
end
