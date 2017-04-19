#!/usr/bin/env ruby

def naive_is_prime?(a)
  divisor = 2
  while divisor < a
    if a % divisor == 0
      return false
    end
    divisor += 1
  end
  return true
end

def largest_prime_factor(a = 600851475143)
  divisor = 1
  largest = 1
  while divisor <= Math.sqrt(a)
    if a % divisor == 0 && naive_is_prime?(divisor)
      largest = divisor
    end
    divisor += 1
  end
  puts largest
end

if ARGV.length == 1
  largest_prime_factor(ARGV[0].to_i)
else
  largest_prime_factor()
end
