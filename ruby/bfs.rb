require 'set'

def bfs(s, adj)
    level  = {}
    level[s] = 0
    parent = {s: 'None'}
    i=1
    frontier = [s] # level i-1
    while !frontier.empty?
        nxt = Set.new  # level i # need to pass timeout
        frontier.each() do |u|
            for v in adj[u.to_i] 
                if !level.has_key? v
                    level[v] = i
                    parent[v] = u
                    nxt << v
                end
            end
        end
        frontier = nxt
        i += 1         
    end
    level
end

t = gets.strip.to_i
for a0 in (1..t)
    xy = Set.new # need to pass timeout
    adj = {}
    nm = gets.strip.split ' '
    n = nm.first.to_i
    (1..n).each() { |no| adj[no] = Set.new }
    m = nm.last.to_i
    for i in (1..m)
        a = gets.strip.split ' '
        x = a.first.to_i
        y = a.last.to_i
        adj[x] << y
        adj[y] << x
    end
    s = gets.strip.to_i
    
    result = bfs(s, adj)
    
    to_print = {}
    for node in (1..n)
        if node != s && result[node]
            to_print[node] = result[node] * 6
        elsif node != s
            to_print[node] = -1
        end
    end
    to_print.map() { |v| print v.last.to_s + ' ' }
    puts ''
end
