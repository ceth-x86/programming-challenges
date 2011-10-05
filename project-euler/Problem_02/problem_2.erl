-module(problem_2).
-compile(export_all).

start()->
    factorials(1, 1, 4000000, 0).

factorials(A, B, Max, Accum) when A + B > Max ->
    io:format("result: ~p~n", [Accum]);
factorials(A, B, Max, Accum) ->
    case (A + B) rem 2 of
	0 -> 
	    factorials(A + B, A, Max, Accum + A + B);
	1 ->
	    factorials(A + B, A, Max, Accum)
    end.





