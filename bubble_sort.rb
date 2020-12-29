def bubble_sort(array)
    length = array.size 
    loop do 
      swapped = false
      (length - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i +1], array[i]
          swapped = true
        end
      end
      break if not swapped
    end
  array
  end
    array = [4,3,78,2,0,2,4,3,152,25,0,36,152,2,5,6,8,7,9,12,15,15]
    p bubble_sort(array)
