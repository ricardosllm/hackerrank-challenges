def adj_of_node(xy, n)
    r = []
    xy.each() do |c|
        if c[:x] == n
            r << c[:y]
        end
        if c[:y] == n
            r << c[:x]
        end
    end
    r
end

def bfs(s, adj)
    level  = {}
    level[s] = 0
    i=1
    frontier = [s] # level i-1
    while !frontier.empty?
        nxt = []  # level i
        frontier.each() do |u|
            for v in adj[u.to_i] 
                if !level.has_key? v # have we visited this node?
                    level[v] = i
                    nxt.push v
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
    xy = []
    adj = {}
    nm = gets.strip.split ' '
    n = nm.first.to_i
    m = nm.last.to_i
    for i in (1..m)
        a = gets.strip.split ' '
        xy.push({x: a.first.to_i , y: a.last.to_i })
    end
    s = gets.strip.to_i
    for node in (1..n)
        adj[node] = adj_of_node(xy, node)     
    end
    result = bfs(s, adj)
    
    to_print = {}
    for node in (1..n)
        if node != s && result[node]
            to_print[node] = result[node] * 6
        elsif node != s
            to_print[node] = -1
        end
    end
    to_print.map() {|v| print v.last.to_s + ' '}
    puts ''
end
