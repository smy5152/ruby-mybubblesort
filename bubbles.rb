def bubble_sort(bubbles)
  ready = false
  while ready == false
    ready = true
    (0...bubbles.length - 1).each do |i|
      if bubbles[i] > bubbles[i + 1]
        bubbles[i], bubbles[i + 1] = bubbles[i + 1], bubbles[i]
        ready = false
      end
    end
  end
end
examplearr1 = [19, 3, 27, 34, 9, 1, 10, 100, 2]
bubble_sort(examplearr1)
p examplearr1

# Now the Microverse variant
def bubble_sort_by(bubbles)
  ready = false
  while ready == false
    ready = true
    (0...bubbles.length - 1).each do |i|
      comparation = yield bubbles[i], bubbles[i + 1]
      if comparation.positive?
        bubbles[i], bubbles[i + 1] = bubbles[i + 1], bubbles[i]
        ready = false
      end
    end
  end
end

examplearr2 = %w[hi hello hey]
bubble_sort_by(examplearr2) do |left, right|
  left.length - right.length
end
p examplearr2
