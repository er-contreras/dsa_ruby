# In a given array whose elements is monotonically increasing with both negative and positive
# numbers. Write an algorithm to find the point at which array becomes positive.

def find_the_point(arr)
  i = 0
  while i < arr.length
    if arr[i] > 0
      return i
    end
    i += 1
  end
end

p find_the_point([-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5])
