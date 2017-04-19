#!/usr/bin/env ruby

def sum_div_by(a, ceiling=1000)
  sum = 0
  i = a
  while ( i < ceiling )
    sum += i
    i += a
  end
  sum
end

def sum_mult_optimized(a=3, b=5, ceiling=1000)
    puts sum_div_by(a,ceiling) + sum_div_by(b,ceiling) - sum_div_by(a*b,ceiling)
end
if ARGV.length == 3
  sum_mult_optimized(ARGV[0].to_i,ARGV[1].to_i,ARGV[2].to_i)
elsif
  sum_mult_optimized(ARGV[0].to_i,ARGV[1].to_i)
end
