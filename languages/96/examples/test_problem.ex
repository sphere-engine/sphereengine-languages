defmodule Main do
  def func(:eof) do
  end

  def func(str) do
    num = elem(str |> Integer.parse, 0)
    if num != 42 do
      IO.puts num
      func IO.gets("")
    end
  end

  def main do
    func IO.gets("")
  end
end

Main.main

