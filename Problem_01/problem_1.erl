-module(problem_1).
-compile(export_all).

start()->
    lists:sum(lists:filter(fun(X) ->
				   (X rem 5 == 0) or (X rem 3 == 0) 
			   end,
			   lists:seq(1, 999))).
			   
