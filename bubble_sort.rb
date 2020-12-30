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

bubble_sort([3, 63, 9, 2, 0, 2])
def bubble_sort_by(arr)
  (0..arr.length - 2).each do |i|
    sort_it = yield(arr[i], arr[i + 1])
    arr[i], arr[i + 1] = arr[i + 1], arr[i] if sort_it.positive?
  end
  arr
end

bubble_sort_by(%w[hi hello hey]) { |left, right| left.length - right.length }