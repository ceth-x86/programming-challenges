-module(problem_3).
-compile(export_all).

start()->
    problem_3(600851475143, 2).

problem_3(Num, F) when Num > 1 ->
    case Num rem F of
	0 ->
	    problem_3(Num div F, F);
	_Else ->
	    problem_3(Num, F + 1)
    end;

problem_3(Num, F) ->
    io:format("result: ~p~n", [F]).
