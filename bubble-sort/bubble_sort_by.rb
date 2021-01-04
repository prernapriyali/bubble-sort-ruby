def bubble_sort_by(array)
  array.length.times do
    swap = 0
    (array.length - 1).times do |i|
      if yield(array[i], array[i+1]).positive?
        array[i], array[i+1] = array[i+1], array[i]
        swap += 1
      end
    end
    break array if swap == 0
  end
end

sorted_array = bubble_sort_by(["pal","hello","h","hola"]) do |left,right|
  left.length - right.length
end

puts sorted_array