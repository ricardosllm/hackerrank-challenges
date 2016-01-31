t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.split ' '
    counter = 0
    first_square = Math.sqrt(n.first.to_i).ceil
    last_square = Math.sqrt(n.last.to_i).floor
    for i in (first_square..last_square)
        counter += 1 if i % 1 == 0
    end
    puts counter
end
