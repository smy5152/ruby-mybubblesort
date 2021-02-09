# method: Sorting for received list of strings
# parameter: an array of strings
# Type: Bubble sort with a double for loop and a temp swap variable
# Did not use the Ruby feature of variable swap to leave it as basic as possible 

def my_bubble_sort(list_to_sort)
  swap = ""
  for i in 0...(list_to_sort.length)
    for j in 0...(list_to_sort.length-1)
      yield_result = yield(list_to_sort[j],list_to_sort[j+1])  
      if yield_result.positive?
        swap=list_to_sort[j]
        list_to_sort[j]=list_to_sort[j+1]
        list_to_sort[j+1]=swap
      end
    end 
  end
  #implicit return
  list_to_sort
end

# INPUT: List of Strings
list = ["hi","likes","hey", "adam", "wassabi"]
# CALL: Sort Function
# YIELD: Function block defined to compare and decide whether swap is needed
my_bubble_sort(list) do |left,right|
  left.length - right.length
end
# Print: Sorted array
p list
