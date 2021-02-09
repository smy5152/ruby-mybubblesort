# method: Sorting for received list of numbers
# parameter: an array of numbers
# Type: Bubble sort with a double for loop and a temp swap variable
# Did not use the Ruby feature of variable swap to leave it as basic as possible 

def my_bubble_sort(list_to_sort)
  swap = 0
  for i in 0...(list_to_sort.length)
    for j in 0...(list_to_sort.length-1)
      if list_to_sort[j]>list_to_sort[j+1]
        swap=list_to_sort[j]
        list_to_sort[j]=list_to_sort[j+1]
        list_to_sort[j+1]=swap
      end
    end 
  end
  #implicit return
  list_to_sort
end

# INPUT: List of Integers
list = [19, 3, 27, 34, 9, 1, 10, 100, 2]
# CALL: Sort Function
# Print: Sorted array
p my_bubble_sort(list)
