: fizzbuzz ( -- )
  101 1 do
    true
    i 3 mod 0= if ." Fizz" false and then
    i 5 mod 0= if ." Buzz" false and then
    if i . then
    cr
  loop
;

fizzbuzz
bye
