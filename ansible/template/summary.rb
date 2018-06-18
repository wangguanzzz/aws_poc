file = File.new("result.csv","r")
counter = 0
sum = 0
while( line = file.gets )
  next if counter == 0
  if not line.include? 'OK'
    puts 'failed!'
  end
  elapse = (line.split(',')[1]).to_i
  sum += elapse
  counter += 1
end
puts sum
puts counter
puts (sum.to_f/counter.to_f)

file.close