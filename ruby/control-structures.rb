##############################
# Control Structures

# Each
def scoring(array)
	array.each { |user| user.update_score }   	 
end

# Unless
def scoring(array)
  array.each { |user| user.update_score unless user.is_admin? }   	 
end

# Infinite Loop
loop do
	break if coder.oh_one?
	coder.practice
end

# Until
coder.practice until coder.oh_one?

# Case
def identify_class(obj)
	case 
	when obj.is_a?(Hacker)
		puts "It's a Hacker!"
	when obj.is_a?(Submission)
		puts "It's a Submission!"
	when obj.is_a?(TestCase)
		puts "It's a TestCase!"
	when obj.is_a?(Contest)
		puts "It's a Contest!"
	else
		puts "It's an unknown model"
	end
end

##############################
# Arrays & Hashes
 
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
