def result(xy, s, n)
    r = 0
    xy.each() do |c|
        if c[:x] == s.to_s && c[:y] == n.to_s
            return 1
        else
            r = 0
        end                
    end
    r
end

t = gets.strip.to_i
for a0 in (1..t)
    xy = []
    nm = gets.strip.split ' '
    n = nm.first.to_i
    m = nm.last.to_i
    for i in (1..m)
        a = gets.strip.split ' '
        xy.push({x: a.first, y: a.last})
    end
    s = gets.strip
    
    for n in (1..n)
        next if n == s.to_i
        if result(xy, s, n) > 0 
            print '6 '
        else
            print '-1 '
        end
    end
    puts ''
end
