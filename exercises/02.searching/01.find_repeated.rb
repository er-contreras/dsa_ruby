# In a given array of n elements, find the first repeated element. Which of the following methods
# will work for us. And which if the method will not work for us. If a method works, then
# implement it.

# - Brute force exhaustive search
# - Use Hash-Table to keep an index of the elements and use the second scan to find the
#   element.
# - Sorting the elements
# - If we know the range of the element then we can use counting technique.

# Hint: When order in which elements appear in input is important, we cannot use sorting.

# def find_first_repeated(arr)
#   i = 0
#   while i < arr.length
#     j = i
#     while j < arr.length
#       return arr[i] if arr[i] == arr[j]
#       j += 1
#     end
#     i += 1
#   end
# end

# def find_first_repeated(arr)
#   hash = Hash.new(0)
# 
#   i = 0
#   while i < arr.size
#     hash[arr[i]] = hash[arr[i]] + 1
#     
#     return arr[i] if hash[arr[i]] > 1
# 
#     i += 1
#   end
# end

# def find_first_repeated(arr)
#   arr= arr.sort
# 
#   i = 0
#   while i < arr.size
#     return arr[i] if arr[i] == arr[i - 1]
#     
#     i += 1
#   end
# end

# def find_first_repeated(arr)
#   set = Set.new  
# 
#   i = 0
#   while i < arr.size
#     if set.include?(arr[i])
#       return arr[i] 
#     else
#       set.add(arr[i])
#     end
# 
#     i += 1
#   end
# end

def find_first_repeated(arr)
  count = Array.new(arr.size, 0) 

  i = 0
  while i < arr.size
    if count[arr[i]] == 1
      return arr[i]
    else
      count[arr[i]] = count[arr[i]] + 1
    end

    i += 1
  end
end

p find_first_repeated([1, 2, 1, 2, 3]) # => 1
p find_first_repeated([1, 3, 1, 3, 3]) # => 1
p find_first_repeated([3, 2, 2, 3, 3]) # => 2

