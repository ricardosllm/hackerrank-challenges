#########################
# Strings

def single_quote
  'Hello World and others!'
end

def double_quote
  "Hello World and others!"
end

def here_doc
	<<-HERE
  Hello World and others!
  HERE
end

# Encoding
def transcode(iso_encoded)
	iso_encoded.force_encoding 'utf-8'
end

# Indexing
def extract_number(string, pos, length)
	num = string[pos,length]
	num[2,1] = ""
	num.to_i / 100.00
end

def serial_average(serial)
	x = extract_number serial, 4, 5
	y = extract_number serial, 10, 5
	average = ((x + y) / 2.00).round 2
	"#{serial[0,4]}#{average}"
end

# Iteration
def count_multibyte_char(string)
	string.each_char.with_object([]) { |c, r| r << c if c.bytesize > 1 }.size
end

# Methods I
def process_text(array)
	array.map(&:chomp).map(&:strip).join ' '
end

# Methods II
def strike(string)
	"<strike>#{string}</strike>"
end

def mask_article(string, array)
	string.split.each.map { |word| array.include?(word) ? strike(word) : word }.join ' '
end
