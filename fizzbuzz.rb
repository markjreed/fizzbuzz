#!/usr/bin/env ruby
(1..100).each do |i|
  l = i%3==0 ? 'Fizz' : ''
  l += 'Buzz' if i%5==0
  l = i.to_s if l == ''
  puts l
end
