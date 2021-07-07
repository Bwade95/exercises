-module(greet).
-export([greet/2, test/0]).

greet(male, Name) ->
    io:format("Hello, Mr ~s~n", [Name]);
greet(female, Name) ->
    io:format("Hello, Miss ~s~n", [Name]);
greet(_, Name) ->
    io:format("Hello, ~s~n", [Name]).

test() ->
    io:format("~30f~n", [4.0]).
