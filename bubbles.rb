def bubble_sort(bubbles)
  ready = false
  while ready==false do
    ready = true
    for i in 0...(bubbles.length-1)
      if bubbles[i] > bubbles[i+1]
        bubbles[i], bubbles[i+1] = bubbles[i+1], bubbles[i]
        ready = false
      end
    end
  end
end
example_arr_1 = [19,3, 27, 34, 9, 1, 10, 100, 2]
bubble_sort(example_arr_1)
p example_arr_1

#Now the Microverse variant
def bubble_sort_by(bubbles)
  ready = false
  while ready==false do
    ready = true
    for i in 0...(bubbles.length-1)
      comparation = yield bubbles[i], bubbles[i+1]
      if comparation.positive?
        bubbles[i], bubbles[i+1] = bubbles[i+1], bubbles[i]
        ready = false
      end
    end
  end
end

example_arr_2 = ["hi","hello","hey"]
bubble_sort_by(example_arr_2) do |left,right|
  left.length - right.length
end
p example_arr_2
