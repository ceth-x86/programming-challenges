-module(problem_10).
-compile(export_all).

-import(math).

start()->
    io:format("result: ~p~n", [problem_10(2000000)]).

problem_10(Max) ->
    Sum = sum(Max, 2, 0),
    Sum.


is_prime(N, PFactor)->
    MaxFactor = math:sqrt(N),
    if PFactor =< MaxFactor ->
	    if  N rem PFactor == 0 ->
		    false;
		true ->
		    isprime(N, PFactor + 1)
	    end;
       true ->
	    true
    end.     

sum(Max, Start, Sum) ->
    if Start =< Max ->
	    Prime = is_prime(Start, 2),
	    if Prime == true ->
		    Newsum = Sum + Start,
		    sum(Max, Start + 1, Newsum);
	       true ->
		    sum(Max, Start + 1, Sum)
	    end;
       true ->
	    Sum
    end.


