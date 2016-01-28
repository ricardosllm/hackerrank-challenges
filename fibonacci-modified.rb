def fibo_mod(n)
    n = n.to_i
    return @fst.to_i if n == 1
    return @snd.to_i if n == 2
    (fibo_mod(n-1)**2) + fibo_mod(n-2)
end

z = gets.strip.split ' '

@fst = z[0]
@snd = z[1]
n   = z[2]

puts fibo_mod(n)
