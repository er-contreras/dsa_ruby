# In a given sorted array, find a given number. If found then return the index if not then
# insert into the array.

def find_a_given_number(arr, value)
  i = 0
  while i < arr.length
    return i if arr[i] == value
    i += 1
  end
end

p find_a_given_number([1, 2, 3, 4, 5], 4)
