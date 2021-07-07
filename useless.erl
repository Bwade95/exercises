-module(useless).
-author("Bradley Chadworth").
-export([add/2, hello_world/0, greet_and_add_two/1]).
-compile([debug_info, export_all]).

add(A,B) ->
    A + B.

hello_world() ->
    io:format("Hello, World!~n").

greet_and_add_two(X) ->
    hello_world(),
    add(X,2).