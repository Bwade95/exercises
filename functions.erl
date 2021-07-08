-module(functions).
-compile(export_all). %% replace with -export(). later

%% functions to return first element of list and second element of list
head([H|_]) -> H.
second([_,X|_]) -> X.

%% true and false testing
same(X,X) ->
    true;
same(_,_) ->
    false.

%% returns a string based on validity of input variables
valid_time({Date = {Y,M,D}, Time = {H,Min,S}}) ->
    case is_valid(Date) andalso is_valid(Time) of
        true -> io:format("The Date tuple (~p) says today is: ~p/~p/~p,~n", [Date,Y,M,D]),
                io:format("The Time tuple (~p) indicates: ~p:~p:~p.~n", [Time,H,Min,S])  
    end;  
valid_time(_) ->
    io:format("Stop feeding me wrong data!~n").

%% determines if a variable is valid by checking if each provided element is an integer
is_valid(F) when is_integer(element(1, F)) andalso is_integer(element(2, F)) andalso is_integer(element(3, F)) -> true.