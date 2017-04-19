#!/usr/bin/env ruby
def sum_square_diff(n=100)
  i = 1
  sum = 0
  while i < n
    for j in i+1..n
      sum += j*i
    end
    i += 1
  end
  puts sum*2
end

if ARGV.length == 1
  sum_square_diff(ARGV[0].to_i)
else
  sum_square_diff()
end
