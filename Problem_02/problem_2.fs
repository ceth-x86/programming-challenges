open System

let rec Fib n =
    if n < 2 then 1
    else Fib(n-2) + Fib(n-1)

let isEven x =
    if x%2 = 0 then true
    else false

let FibEvenAp1 =
    Seq.initInfinite (fun index -> if isEven(Fib index) 
                                   then Fib index else 0)

let res =
    FibEvenAp1
    |> Seq.takeWhile (fun n -> n < 4000000)
    |> Seq.sum

Console.WriteLine(res)
