#################################################
# Dynamic Array

n, q     = gets.split.map(&:to_i)
queries  = q.times.map { |_| gets.split.map(&:to_i) }
seq_list = n.times.map { |_| [] }
last_ans = 0

queries.each do |q_type, x, y|
    i = (x ^ last_ans) % n
    
    case q_type
    when 1
        seq_list[i] << y     
    when 2
        seq = seq_list[i]
        j = y % seq.size
        last_ans = seq[j]
        p last_ans
    else
        fail         
    end
end
