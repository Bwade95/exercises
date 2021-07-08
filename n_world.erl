-module(n_world).
-export([main/0]).

main() ->
    {N,_} = string:to_integer(string:chomp(io:get_line(""))),
    hello_world1(N),
    hello_world2(N).

%% Iterates then returns error
hello_world1(N) when N > 0 ->
    

%% Iterates with no error
hello_world2(0) -> true;
hello_world2(N) -> 
    io:fwrite("Hello World~n"),
    hello_world2(N-1).