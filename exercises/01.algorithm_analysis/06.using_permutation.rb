# frozen_string_literal: true

# Using AllPermutation function dicussed before, write a function, which give only distinct solutions
# Basically what this class does, it is to receive an arr of numbers, index and a length.
# It check first if the length is equal to the index provided if not, exit the if scope and asigned j equal as i.
# So it pass to the while block, check if j is smallest to the length, if it is not proceed to execute the next methods.
# The first swap method basically is passing the 3 arguments with its current values.
# then we assign to the temp variable the current arr index value, so on and so for...
# Basically the swap occurs when the j += 1 at the end of the while block, so the arr first index value get
# the value of the arr second index value

def permutation(arr, i, length, result = [])
  if length == i
    result.push(Array.new(arr))
  else
    j = i

    while j < length
      swap(arr, i, j)
      permutation(arr, i + 1, length, result)
      swap(arr, i, j)
      j += 1
    end
  end
  result
end

def swap(arr, i, j)
  temp = arr[i]
  arr[i] = arr[j]
  arr[j] = temp
end
