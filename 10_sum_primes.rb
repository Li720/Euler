#!/usr/bin/env ruby

def perform_sieve_of_eratosthenes(n=2000000)
  #Sieve of Eratosthenes
  hash = Hash.new(:prime)
  hash[1] = :unprime
  primes = Array.new
  for i in 2..n
    if hash[i] == :prime
      primes.push(i)
      mult = i
      while mult <= n
        hash[mult] = :unprime
        mult += i
      end
    end
  end
  return primes
end

def sum_primes(n=2000000)
  primes = perform_sieve_of_eratosthenes(n)
  puts primes.reduce(:+)
end

if ARGV.length == 1
  sum_primes(ARGV[0].to_i)
else
  sum_primes()
end
