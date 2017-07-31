(let loop ()
  (let/ec break
    (define a (read))
    (when (= a 42) (break))
    (writeln a)
    (loop)))
