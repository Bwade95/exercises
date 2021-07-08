-module(factorial).
-export([factorial/1, len/1]).

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 ->
    io:fwrite("~w~n", [N]),
    N*factorial(N-1).

len([]) -> 0;
len([_|T]) -> 1 + len(T).