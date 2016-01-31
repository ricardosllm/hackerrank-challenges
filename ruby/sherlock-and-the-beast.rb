#!/bin/ruby

t = gets.strip.to_i
for a0 in (0..t-1)
    y = gets.strip.to_i
    z = y
    while z%3 != 0 do
      z = z - 5
    end
    if z < 0
      puts '-1'
    else
      puts '5' * z + '3' * (y - z)
    end
end
