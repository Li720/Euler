#!/usr/bin/env ruby

def even_fib_sum(ceiling = 4000000)
  a = 1
  b = 2
  sum = 0
  while b < ceiling
    if b % 2 == 0
      sum += b
    end
    swap = a
    a = b
    b = swap + a
  end
  puts sum
end

if ARGV.length == 1
  even_fib_sum(ARGV[0].to_i)
else
  even_fib_sum()
end
