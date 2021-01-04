def bubble_sort(array)
  items = array.length
  array.each do
    i = 0
    count = 0
    while i < items - 1
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
      i += 1
      count += 1
    end
    break if count.zero?
  end
end

p bubble_sort([3, 63, 9, 2, 0, 2])
