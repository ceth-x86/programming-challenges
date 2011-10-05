open System

let rec gcd a b =
    match b with
        | x when x = 0 -> a
        | _ -> gcd b (a % b)

let lcm a b = let m = b / (gcd a b) in a * m
let result = Seq.fold lcm 1 [1..20]

[<EntryPoint>]
let main(args : string[]) =
    printfn "result = %d" result
    0

