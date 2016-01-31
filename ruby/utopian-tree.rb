#!/bin/ruby

def print_size(cycles)
    size = 1
    if cycles < 1
        puts size
    else
        for c in (1..cycles)
            if (c % 2 == 1)    # odd, tree doubles in size
                size = size * 2
            elsif (c % 2 == 0) # even, tree grows 1 meter
                size = size + 1
            end
        end
        puts size
    end
end

t = gets.strip.to_i # number of test cases
for a0 in (0..t-1)
    n = gets.strip.to_i # number of cycles
    print_size n
end
