-module(recursion).
-export([factorial/1, len/1, tail_fac/1, tail_len/1, duplicate/2, tail_duplicate/2]).

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 ->
    io:fwrite("~w~n", [N]),
    N*factorial(N-1).

len([]) -> 0;
len([_|T]) -> 1 + len(T).

%% tail_fac/1 abstracts over tail_fac/2 requiring only tail_fac/1 to be exported
%% tail recursion converts linear processes into iterative ones, saving space
tail_fac(N) -> tail_fac(N,1).

tail_fac(0,Acc) -> Acc;
tail_fac(N, Acc) when N > 0 -> tail_fac(N-1, N*Acc).

%% using tail recursion to get the length of a list
tail_len(L) -> tail_len(L,0).

tail_len([],Acc) -> Acc;
tail_len([_|T], Acc) -> tail_len(T, Acc+1).

%% duplicate/2
duplicate(0,_) ->
    [];
duplicate(N,Term) when N > 0 ->
    [Term|duplicate(N-1,Term)].

tail_duplicate(N,Term) ->
    tail_duplicate(N,Term,[]).
tail_duplicate(0,_,List) ->
    List;
tail_duplicate(N,Term,List) when N > 0 ->
    tail_duplicate(N-1, Term, [Term|List]).