-module(functions).
-compile(export_all). %% replace with -export(). later
-define(is_format(F), tuple_size(F) =:= 3 andalso is_integer(element(1, F)) andalso is_integer(element(2, F)) andalso is_integer(element(3, F))).

head([H|_]) -> H.
second([_,X|_]) -> X.

same(X,X) ->
    true;
same(_,_) ->
    false.

valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) when ?is_format(Date), ?is_format(Time) ->
    io:format("The Date tuple (~p) says today is: ~p/~p/~p,~n", [Date,Y,M,D]),
    io:format("The Time tuple (~p) indicates: ~p:~p:~p.~n", [Time,H,Min,S]);
valid_time(_) ->
    io:format("Stop feeding me wrong data!~n").