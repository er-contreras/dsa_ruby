# In a given array of n elements, write an algorithm to find three elements in an array who sum
# is a given value.
#
# Hint: Try to do this problem using a brute force approach. Then try to apply the sorting
# approach along with a brute force approach. The time complexity will be O(n2)

def find_three_elements(arr, value)
  arr = arr.sort

  i = 0
  while i < arr.size
    j = i + 1
    while j < arr.size
      z = j + 1
      while z < arr.size
        return [arr[i], arr[j], arr[z]] if arr[i] + arr[j] + arr[z] == value
        z += 1
      end
      j += 1
    end
    i += 1
  end
end

p find_three_elements([1, 3, 9, 1, 8, 2], 4)
p find_three_elements([1, 3, 9, 1, 8, 2], 12)
p find_three_elements([1, 3, 9, 1, 8, 2], 20)
