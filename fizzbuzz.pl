fizzBuzz(N, 'FizzBuzz') :- fizzBuzz(N, 'Fizz'), fizzBuzz(N, 'Buzz').
fizzBuzz(N, 'Fizz')     :- 0 =:= mod(N, 3).
fizzBuzz(N, 'Buzz')     :- 0 =:= mod(N, 5).
fizzBuzz(N, N).

writeList(K,K) :- !.
writeList(K,L) :- fizzBuzz(K, FB),
                  write(FB), write('\n'),
                  N is K+1,
                  writeList(N, L).

main :- writeList(1,101), halt.
