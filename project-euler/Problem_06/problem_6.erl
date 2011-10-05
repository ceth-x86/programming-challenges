-module(problem_6).
-compile(export_all).

start()->
    io:format("result=~p~n", [sum_of_n(100) * sum_of_n(100) - sum_of_square_n(100)]).

sum_of_n(Num)->
    lists:foldr(fun(X, Y)->
			X + Y
		end,
		0, lists:seq(1, Num)).

sum_of_square_n(Num)->
    lists:foldr(fun(X, Y) ->
			X + Y
		end,
		0, lists:map(fun(X)->
				     X * X
			     end,
			     lists:seq(1, Num))).


    
    
