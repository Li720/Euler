#!/usr/bin/env ruby

def sum_mult_unoptimized(a, b, ceiling=1000)
    sum = 0
    i = [a,b].min
    while (i < ceiling) do
      if i % a == 0 or i % b == 0
        sum += i
      end
      i += 1
    end
    puts sum
end
if ARGV.length == 3
  sum_mult_unoptimized(ARGV[0].to_i,ARGV[1].to_i,ARGV[2].to_i)
elsif
  sum_mult_unoptimized(ARGV[0].to_i,ARGV[1].to_i)
end
