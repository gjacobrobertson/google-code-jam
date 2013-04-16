def answer(test_number, ans)
  puts "Case ##{test_number}: #{ans}"
end

def solve(test_number)
  n = STDIN.readline.strip.split(' ').first.to_i
  lawn = []
  n.times do
    lawn << STDIN.readline.strip.split(' ').map{|x| x.to_i}
  end

  rows = lawn.map do |row|
    row.max
  end

  cols = lawn.transpose.map do |col|
    col.max
  end

  lawn.each_with_index do |row, i|
    row.each_with_index do |cell, j|
      if cell != [rows[i], cols[j]].min
        answer(test_number, "NO")
        return
      end
    end
  end
  answer(test_number, "YES")
end

tests = STDIN.readline.strip.to_i

tests.times do |t|
  solve t+1
end