def answer(test_number, ans)
  puts "Case ##{test_number}: #{ans}"
end

def fair(num)
  num.to_s.reverse == num.to_s
end

def square(num)
  sqrt = Math.sqrt(num)
  sqrt.denominator == 1 and fair(sqrt.to_i)
end

def solve(test_number)
  a, b = STDIN.readline.strip.split(' ').map{|x| x.to_i}
  ans = (a..b).select{|x| fair(x) and square(x)}.count
  answer(test_number, ans)
end

tests = STDIN.readline.strip.to_i

tests.times do |t|
  solve t+1
end
