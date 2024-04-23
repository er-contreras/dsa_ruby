# frozen_string_literal: true

# Given an array of n numbers, find two elements such that their sum is equal to "value"

# First approach: Exhaustive search or brute force, for each element in array find if there is some
# other element, which sums up to desire value. This is done using two for loop, first loop is
# to select the element and the second loop is to find another element.

# def find_pair(arr, value)
#   size = arr.size
#
#   i = 0
#   while i < size
#     j = 1 + 1
#     while j < size
#       if (arr[i] + arr[j]) == value
#         puts "The pair is: #{arr[i]}, #{arr[j]}"
#         return 1
#       end
#       j += 1
#     end
#     i += 1
#   end
#
#   0
# end

# Second approach: Sorting steps are as follows:
#   1. Sort all the elements in the array.
#   2. Take two variable first and second. Variable first = 0 and second = size -1.
#   3. Compute sum = arr[first] + arr[second]
#   4. If the sum is equal to the desire value, the we have the solution.
#   5. If the sum is less than the desire value, then we will increase the first
#   6. If the sum is greater the the desire value, the we will decrease the second.
#   7. We repeat the above process until we get the desire pair or we get first >= second.

# def find_pair(arr, value)
#   size = arr.size
#   first = 0
#   second = size - 1
#   arr = arr.sort
#
#   while first < second
#     curr = arr[first] + arr[second]
#
#     if curr == value
#       puts "The pair is: #{arr[first]}, #{arr[second]}"
#       return 1
#     elsif curr < value
#       first += 1
#     else
#       second -= 1
#     end
#   end
#
#   0
# end

# Third approach: Hash-Table, using Hash-Table; we can keep track of the elements we have
# already seen and we can find the pair in just one scan.
#   1. For each element, insert the value in Hashtable. Let's say current value us arr[index]
#   2. If value - arr[index] is in the Hashtable the we have the desired pair.
#   3. Else, proceed to the next entry in the array.

def find_pair(arr, value)
  size = arr.size
  set = Set.new

  i = 0
  while i < size
    return [arr[i], value - arr[i]] if set.include?(value - arr[i])

    set.add(arr[i])

    i += 1
  end
end

p find_pair([1, 3, 1, 3, 4, 2, 2], 5)
