import os
import strutils

while true:
  var
   line:string = stdin.readLine
   x = line.parseInt
  if x == 42:
    break
  else:
    echo line
