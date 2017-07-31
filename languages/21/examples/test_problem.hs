main = interact fun

fun = unlines . takeWhile (/="42") . words
