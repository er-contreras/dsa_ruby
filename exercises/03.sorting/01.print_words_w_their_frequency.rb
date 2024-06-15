# In a given text file, print the words with their frequency. Now print the kth word in term of
# frequency.
#
# Hint:
#   a) First approach may be you can use the sorting and return the kth element.
#   b) Second approach: You can use the kth element quick select algorithm.
#   c) Third approach: You can use Hash-Table or Trie to keep track of the frequency. Use Heap
#       to get the Kth element.

def words_w_their_frequency(text)
  arr = text.split
  hash = Hash.new(0)

  i = 0
  while i < arr.length
    hash[arr[i]] += 1

    i += 1
  end

  hash

  i = 0
  while i < hash.length
    p hash
    i += 1
  end
end

p Dir.pwd
p File.dirname("./rote_learning.txt")

# require_relative "./rote_learning.txt"

file = File.read("./rote_learning.txt")
p file

p words_w_their_frequency("hello there hello")
