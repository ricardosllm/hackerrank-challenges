#!/bin/ruby
class Fixnum
  def digits(base: 10)
    quotient, remainder = divmod(base)
    quotient == 0 ? [remainder] : [*quotient.digits(base: base), remainder]
  end
end

t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    counter = 0
    for d in n.digits
        if d != 0 && (n % d) == 0 
            counter += 1 
        end
    end
    puts counter
end
