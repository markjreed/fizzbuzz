#!/usr/bin/env escript
fizz(N) when N rem 3 == 0 -> "Fizz";
fizz(_) -> "".

buzz(N) when N rem 5 == 0 -> "Buzz";
buzz(_) -> "".

fizzbuzz(N) ->
    FB = string:concat(fizz(N),buzz(N)),
    case FB of
      "" -> integer_to_list(N);
      _  -> FB
    end.

main(_) -> lists:map(fun(N) -> io:fwrite("~s~n",[fizzbuzz(N)]) end,
                     lists:seq(1,100,1)).
