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
