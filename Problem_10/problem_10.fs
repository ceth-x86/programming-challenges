open System

let is_prime (x:int64) =
    let rec check i =
        double i > sqrt (double x) || (x % i <> 0L && check (i + 1L))
    check 2L  

let problem_10 (n:int64) =
    seq { for i in 2L .. n do
          if is_prime i then yield i }
    |> Seq.sum

[<EntryPoint>]
let main(args : string[]) =
    printfn "result = %A" (problem_10 2000000L)
    0
