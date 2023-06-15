#!/usr/bin/env tcsh
@ i = 1
while ($i <= 100)
  set line = ''
  @ m3 = $i % 3
  @ m5 = $i % 5
  if ($m3 == 0) set line='Fizz'
  if ($m5 == 0) set line="${line}Buzz"
  if ($line == '') then
    echo $i
  else
    echo $line
  endif
  @ i += 1
end
