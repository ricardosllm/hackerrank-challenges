#########################
# Methods

def prime?(number)
  Prime.prime? number
end

# Arguments
def take(coll, index = 1)
  coll.select.with_index { |e, i| i >= index }
end

# Variable Arguments
def full_name(first_name, second_name, *last_names)
  [first_name, second_name, last_names].flatten.join ' '
end

# Keyword Arguments
def convert_temp(temp, input_scale: 'celsius', output_scale: 'celsius')
  convert = { 'celsius' => 0, 'fahrenheit' => 1,'kelvin' => 2 }

  input  = convert[input_scale]
  output = convert[output_scale]
  
  matrix = [
    [temp,                  (temp*1.8 + 32),       (temp + 273.15)],
    [((temp - 32) * (5/9)), temp,                  ((temp + 459.67) * (5/9))],
    [(temp - 273.15),       (temp * 1.8 - 459.67), temp]
  ]
  
  matrix[input][output]
end

# Blocks
def factorial
    yield
end

n = gets.to_i
factorial do 
    puts "#{(1..n).reduce(1, :*)}"
end


# Procs
def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = proc {|num| num * num }
proc_sum_array     = proc {|arr| arr.reduce(:+) }
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)


# Lambdas
square      = -> (int)  { int * int }
plus_one    = -> (int)  { int + 1 }
into_2      = -> (int)  { int * 2 }
adder       = -> (a, b) { a + b }
values_only = -> (hash) { hash.values }

input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e


# Closures
def block_message_printer
    message = "Welcome to Block Message Printer"
    if block_given?
        yield
    end
  puts "But in this function/method message is :: #{message}"
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }


def proc_message_printer(my_proc)
    message = "Welcome to Proc Message Printer"
    my_proc.call
    puts "But in this function/method message is :: #{message}"
end


my_proc = proc { puts "This message remembers message :: #{message}" }
proc_message_printer(my_proc)
    
    
def lambda_message_printer(my_lambda)
    message = "Welcome to Lambda Message Printer"
    my_lambda.call
    puts "But in this function/method message is :: #{message}"
end

my_lambda = -> { puts "This message remembers message :: #{message}" }
lambda_message_printer(my_lambda)    


# Partial Applications
def factorial(n)
    (1..n).reduce(1, :*)
end

combination = -> (n) do
    -> (r) do
        factorial(n) / (factorial(r) * factorial(n - r))        
    end
end

n = gets.to_i # number of elements
r = gets.to_i # number of distinct elements
nCr = combination.(n)
puts nCr.(r)


# Currying
power_function = -> (x, z) { (x) ** z }

base = gets.to_i
raise_to_power = power_function.curry.(base)

power = gets.to_i
puts raise_to_power.(power)


# Lazy Evaluation
n = gets.to_i

def palindrome?(number)
	number == number.to_s.reverse.to_i
end

def pali_prime?(n)
	palindrome?(n) && Prime.prime?(n)
end

palindromic_primes = -> (n) do
	1.upto(Float::INFINITY).lazy.select { |x| pali_prime? x }.first n
end

p palindromic_primes.(n)
