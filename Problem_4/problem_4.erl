-module(problem_4).
-compile(export_all).

start()->
    lists:max(gen_palindromes(100, 999)).

gen_palindromes(Start, End)->
    [ A * B ||
	A <- lists:seq(Start, End),
	B <- lists:seq(Start, A),
	is_palindrome(A * B)].
    
is_palindrome(Num) ->
    L = integer_to_list(Num),
    L == lists:reverse(L).


