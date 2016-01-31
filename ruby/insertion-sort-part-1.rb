def insertionSort(ar)
    e = ar.last
    arr = ar[0...-1]

    i = arr.size-1
    while i >= 0
      if arr[i] > e && i == 0
        shift_right_insert arr, i+1, arr[i]
        print_arr arr.unshift e
        i = -1
      elsif arr[i] > e
        shift_right_insert arr, i+1, arr[i]
      else
        shift_right_insert arr, i+1, e
        i = -1
      end
      i -= 1
    end
end

def print_arr(ar)
    ar.each {|e| print e.to_s + ' '}
    puts ''
end

def shift_right_insert(arr=[], pos=0, elem)
  print_arr arr[0...pos].push(elem).push(*arr[pos..-1])
end
count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

insertionSort( ar )
