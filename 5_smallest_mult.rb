#!/usr/bin/env ruby
def naive_smallest_mult(n)
  i = n
  while true
    k = n
    isValid = true
    while k >= 1
      if not (i % k == 0)
        isValid = false
        break
      end
      k -= 1
    end
    if isValid
      puts i
      break
    end
    i += 1
  end
end

naive_smallest_mult(ARGV[0].to_i)
