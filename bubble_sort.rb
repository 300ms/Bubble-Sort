# frozen_string_literal: true

def bubble_sort(arr)
  y = 0
  while y < arr.length - 1
    x = 0
    while x < arr.length - 1
      if arr[x] > arr[x + 1]
        tmp = arr[x + 1]
        arr[x + 1] = arr[x]
        arr[x] = tmp
      end
      x += 1
    end
    y += 1
  end
  arr
end

def bubble_sort_by(arr)
  y = 0
  while y < arr.length - 1
    x = 0
    while x < arr.length - 1
      if yield(arr[x], arr[x + 1]).positive?
        tmp = arr[x + 1]
        arr[x + 1] = arr[x]
        arr[x] = tmp
      end
      x += 1
    end
    y += 1
  end
  arr
end

sort = bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end

puts sort
