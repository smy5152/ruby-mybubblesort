# method: Sorting for received list of strings
# parameter: an array of strings
# Type: Bubble sort with a double for loop and a temp swap variable
# Did not use the Ruby feature of variable swap to leave it as basic as possible

def my_bubble_sort(list_to_sort)
  (0...list_to_sort.length).each do
    (0...list_to_sort.length - 1).each do |j|
    yield_result = yield(list_to_sort[j], list_to_sort[j + 1])
      next if yield_result.negative?

      swap = list_to_sort[j]
      list_to_sort[j] = list_to_sort[j + 1]
      list_to_sort[j + 1] = swap
    end
  end
  # implicit return
  list_to_sort
end

# INPUT: List of Strings
list = %w[hi likes hey adam wassabi]
# CALL: Sort Function
# YIELD: Function block defined to compare and decide whether swap is needed
my_bubble_sort(list) do |left, right|
  left.length - right.length
end
# Print: Sorted array
p list
