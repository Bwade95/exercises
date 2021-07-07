-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2,
                to_lower/1, to_upper/1]).
-export([main/0]).

main()->
    string_stuff().

string_stuff() ->
    Str1 = "Random String",
    Str2 = "Another string",

    io:fwrite("String : ~p ~p\n", [Str1, Str2]),

    Str3 = io_lib:format("It's a ~s and ~s\n", [Str1, Str2]),
    io:fwrite(Str3).

