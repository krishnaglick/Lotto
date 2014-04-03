h = Hash.new(0)
iterations = 10000

#10000.times do also works
iterations.times do
  h[[rand(1..53), rand(1..53), rand(1..53), rand(1..53), rand(1..53), rand(1..53)].sort] += 1
end

h.sort_by { |key, val| val}.reverse.each do |key, val|
    puts "#{val}: #{key}"
end

#I run it using "ruby test.rb | less"