#!/usr/bin/env ruby

$start = 100 * 100
$end = 999 * 999

def is_palindrome?(n)
  pal = n.to_s
  front = pal[0,pal.length/2]
  back = pal[0-(pal.length/2),pal.length/2]
  return front == back.reverse
end

def is_product_triple?(n)
  i = 100
  while i <= 999
    if n % i == 0 and (n/i).to_s.length == 3
      return true
    end
    i += 1
  end
  return false
end

def largest_pal
 i = $start
largest = 0
 while i <= $end
   if is_palindrome?(i) && is_product_triple?(i)
     largest = i
   end
   i += 1
 end
 puts largest
end

largest_pal()
