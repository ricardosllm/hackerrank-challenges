#############################
# Service Lane

n,t = gets.strip.split(' ')
test_cases = t.to_i
width = gets.strip.split(' ').map(&:to_i)

tests = (0...test_cases).each.with_object([]) do |tst, tests|
    i,j = gets.strip.split(' ')
    tests << [i.to_i, j.to_i]
end

tests.each { |enter, exit| puts width[enter..exit].min }
