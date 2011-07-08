-module(problem_5).
-compile(export_all).

start()->
    lists:foldr(fun(X, Y) -> lcm(X, Y) end, 1, lists:seq(2, 21)).

gcd(A, B) when B == 0 ->
    A;
gcd(A, B) ->
    gcd(B, A rem B).

lcm(A, B)->
    A * B div gcd(A, B).
