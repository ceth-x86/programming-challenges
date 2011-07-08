open System

let list_of_dividers num =
    [2 .. int (floor (sqrt (float num))) + 1]
    |> Seq.filter (fun x -> num % x = 0)

let is_prime num =
    (Seq.length (list_of_dividers num)) = 0

let rec problem_7 current primes counter =
    match primes, counter with
        | x, y when x >= 10002 -> current
        | x, y when x< 10002 && (is_prime counter) -> problem_7 counter (primes + 1) (counter + 1)
        | _, _ -> problem_7 current primes (counter + 1)

[<EntryPoint>]
let main(args : string[]) =
    printfn "result = %d" (problem_7 0 0 0)
    0
