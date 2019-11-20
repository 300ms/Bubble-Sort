# frozen_string_literal: true

def bubble_sort(arr)
  for a in arr
    x = 0
    while x < arr.length - 1
      if arr[x] > arr[x + 1]
        tmp = arr[x + 1]
        arr[x + 1] = arr[x]
        arr[x] = tmp
      end
      x += 1
    end
  end
end

def bubble_sort_by(arr)
  for a in arr
    x = 0
    while x < arr.length - 1
      if arr[x].length > arr[x + 1].length
        tmp = arr[x + 1]
        arr[x + 1] = arr[x]
        arr[x] = tmp
      end
      x += 1
    end
  end
end

default_test1 = [5, 4, 3, 2, 1]
x = [4, 3, 78, 2, 0, 2]
puts bubble_sort(default_test1)
puts ' '
puts bubble_sort(x)

default_test1 = %w[one two three four five]
z = %w[hi hello hey ilhan felipe]
puts ' '
puts bubble_sort_by(default_test1)
puts ' '
puts bubble_sort_by(z)
