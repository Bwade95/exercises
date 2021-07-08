-module(factorial).
-export([factorial/1]).

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 ->
    io:fwrite("~w~n", [N]),
    N*factorial(N-1).