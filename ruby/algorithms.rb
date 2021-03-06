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

#############################
# Cut the Sticks

def cut_the_sticks(sticks)
  if sticks.size > 0 
    p sticks.size
    smallest = sticks.min
    cut_the_sticks(
      sticks
        .map    { |stick| stick - smallest }
        .select { |stick| stick > 0 }
    )
  end
end

n = gets.strip.to_i
cut_the_sticks gets.strip.split(' ').map(&:to_i)
