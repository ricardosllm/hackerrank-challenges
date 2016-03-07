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
