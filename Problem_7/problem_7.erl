-module(problem_7).
-compile(export_all).

-import(math).

start()->
    io:format("result: ~p~n", [problem_7(0, 0, 0)]).

list_of_dividers(Num)->	
    lists:filter(fun(X)->
			 (Num rem X) == 0
		 end,
		 lists:seq(2, trunc(math:sqrt(Num)) + 1)).

is_prime(Num)->
    length(list_of_dividers(Num)) == 0.
    
problem_7(Current, Primes, Counter) when Primes >= 10002->
    Current;
problem_7(Current, Primes, Counter)->
    case is_prime(Counter) of
	true ->
	    problem_7(Counter, Primes + 1, Counter + 1);
	_Else ->
	    problem_7(Current, Primes, Counter + 1)
    end.
	


    
    
