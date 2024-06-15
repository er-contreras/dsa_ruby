# Find kth Smallest element in the Union of Two Sorted Arrays.

def find_kth_smallest(arr1, arr2)
  (arr1 + arr2).sort.first
end

p find_kth_smallest([1, 2, 3, 4, 5], [1, 2, 3, 4, 5])
