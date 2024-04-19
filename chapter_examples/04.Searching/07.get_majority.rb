# frozen_string_literal: true

# First approach: Exhaustive search or brute force, for each element in array find how many times
# this particular value appears in array. Keep track of the max_count and when some element count is greater
# than max_count then update the max_count. This is done using two for loop, first loop to select
# the element and second loop to count the ocurrence of the element.

# def get_majority(arr)
#   size = arr.size
#   max = 0
#   count = 1
#   max_count = 0
#
#   i = 0
#   while i < size
#     j = i + 1
#     while j < size
#       count += 1 if arr[i] == arr[j]
#
#       j += 1
#     end
#
#     return arr[i] if count > size / 2
#
#     count = 1
#     i += 1
#   end
#
#   print ' no majority found'
#   return -1
# end

# Second approach: Sorting, Sort all the elements in the array. If there is a majority then the
# middle element at the index n/2 must be majority number. So, just single scan can be used to
# find its count and see if the majority is there or not.
# def get_majority(arr)
#   size = arr.size
#   maj_index = size / 2
#   count = 1
#   arr = arr.sort # => [1, 1, 1, 2, 3, 3, 4, 5, 6]
#   candidate = arr[maj_index]
#   count = 0
#
#   i = 0
#   while i < size
#     if arr[i] == candidate
#       count += 1
#     end
#
#     i += 1
#   end
#
#   if count > size / 2
#     return arr[maj_index]
#   else
#     print 'no majority found'
#     return -1
#   end
# end

# Third approach: This is a cancelation approach (Moore's Voting Algorithm), if all the elements
# stand against the majority and each element is cancelled with one element of majority if there is
# majority then majority prevails.
# • Set the first element of the array as majority candidate and initialize the count to be 1.
# • Start scanning the array.
#   - If we get some element whose value is same as majority candidate, then we increase the count.
#   - If we get an element whose value is different from the majority candidate, then we decrement
#   the count.
#   - If count become 0, that means we have a new majority candidate. Make the current candidate as
#     majority candidate and reset count to 1.
#   - At the end, we will have the only majority candidate.
#
# Now scan through the array once again to see if that candidate we found abovehave appeared more than n/2 times.
def get_majority(arr)
  size = arr.size
  maj_index = 0
  count = 1

  i = 1
  while i < size
    if arr[maj_index] == arr[i]
      count += 1
    else
      count -= 1
    end

    if count == 0
      maj_index = i
      count = 1
    end

    i += 1
  end

  candidate = arr[maj_index]
  count = 0

  i = 0
  while i < size
    if arr[i] == candidate
      count += 1
    end

    i += 1
  end

  if count > size / 2
    return arr[maj_index]
  else
    print "no majority found"
    return -1
  end
end

p get_majority([2, 1, 3, 5, 4, 6, 1, 3, 1])
