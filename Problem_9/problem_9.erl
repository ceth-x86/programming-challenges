-module(problem_9).
-compile(export_all).

problem_9()->
    lists:nth(1, 
	      [ {1000 - B - C, B, C} || C <- lists:seq(1, 1000), 
					B <- lists:seq(1, C), 
					(1000 - B - C) * (1000 - B - C) + B * B == C * C]).

start()->
    io:format("result: ~p~n", [problem_9()]).
