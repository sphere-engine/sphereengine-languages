seq { while true do yield stdin.ReadLine () }
|> Seq.takeWhile ((<>) "42")
|> Seq.iter (printfn "%s")
