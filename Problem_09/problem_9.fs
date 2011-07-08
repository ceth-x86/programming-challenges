open System

let problem_9 num = [ for a in 1..num do
                      for b in 1..a do
                      let c = num - a - b
                      if a * a + b * b = c * c
                      then yield (a, b, c) ] |> Seq.head

[<EntryPoint>]
let main(args : string[]) =
    let (a, b, c) = (problem_9 1000) 
    printfn "result = %d, %d, %d" a b c
    0
