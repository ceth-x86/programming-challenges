open System

let rec problem_3 num  f =
    match num with
        | x when x <= 1L -> f
        | x when x % f = 0L ->  problem_3 (num / f) f
        | _ -> problem_3 num (f + 1L)

[<EntryPoint>]
let main(args : string[]) =
    printfn "result = %d" (problem_3 600851475143L 2L)
    0
    
