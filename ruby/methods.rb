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
