##############################
# Arrays & Hashes
 
## Array

# Initialization
array   = []
array_1 = [nil]
array_2 = [10, 10]

# Index, Part 1
def element_at(arr, index)
  arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
  arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
  arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
  arr[start_pos,length]
end

# Index, Part 2
def neg_pos(arr, index)
  arr[-index]
end

def first_element(arr)
  arr.first
end

def last_element(arr)
  arr.last
end

def first_n(arr, n)
  arr.take n
end

def drop_n(arr, n)
  arr.drop n
end

# Addition
def end_arr_add(arr, element)
  arr.push element
end

def begin_arr_add(arr, element)
  arr.insert 0, element
end

def index_arr_add(arr, index, element)
  arr.insert index, element
end

def index_arr_multiple_add(arr, index)
  arr.insert index, 'R', 'M'
end

# Deletion
def end_arr_delete(arr)
  arr.pop
end

def start_arr_delete(arr)
  arr.shift
end

def delete_at_arr(arr, index)
  arr.delete_at index
end

def delete_all(arr, val)
  arr.delete val
end

# Selection
def select_arr(arr)
  arr.select { |a| a.odd? }
end

def reject_arr(arr)
  arr.reject { |a| (a % 3) == 0 }
end

def delete_arr(arr)
  arr.delete_if { |a| a < 0 }
end

def keep_arr(arr)
  arr.keep_if { |a| a >= 0 }
end

## Hash

# Initialization
empty_hash   = {}
default_hash = Hash.new 1
hackerrank   = { 'simmy' => 100, 'vivmbbs' => 200 }

# Each
def iter_hash(hash)
  hash.each { |h| puts h }
end

# Addition, Deletion, Selection
hackerrank.store 543121, 100
hackerrank.keep_if { |k, v| k.is_a? Integer }
hackerrank.delete_if { |k, v| k.even? }
