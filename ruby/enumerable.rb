##############################
# Enumerable

def iterate_colors(colors)
  arr = []
  colors.each { |c| arr << c }
  arr
end

# each_with_index
def skip_animals(animals, skip)
  arr = []
  animals.each_with_index { |animal, i| arr << "#{i}:#{animal}" if i >= skip }
  arr
end

# collect
def rot13(secret_messages)
  secret_messages.map { |msg| msg.tr('a-z', 'n-za-m') }
end

# reduce
def sum_terms(n)
  (1..n).inject(0) { |sum, n| sum + n**2 + 1 }
end

# any, all, none, find
def func_any(hash)
  hash.any? { |k, v| k.is_a?(Integer) }
end

def func_all(hash)
  hash.all? { |k, v| v.is_a?(Integer) && v < 10 }
end

def func_none(hash)
  hash.none? { |k, v| v == nil }
end

def func_find(hash)
  hash.find { |k, v| (k.is_a?(Integer) && (v.is_a?(Integer) && v < 20)) || (k.is_a?(String) && v[0] == 'a') }
end

# group_by
def group_by_marks(marks, n)
  marks.group_by {|s, m| m >= n ? 'Passed' : 'Failed' }
end
