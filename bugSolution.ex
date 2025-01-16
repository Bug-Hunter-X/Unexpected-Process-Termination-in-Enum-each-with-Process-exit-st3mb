```elixir
list = [1, 2, 3, 4, 5]

result = Enum.map(list, fn x ->
  if x == 3 do
    {:halt, x} # Indicate termination but continue function execution
  else
    {:continue, x}
  end
end)

result = Enum.reduce(result, [], fn
  {:halt, x}, acc ->  [x | acc] #Handle the termination
  {:continue, x}, acc -> [x | acc]
end)

Enum.each(result, fn x -> IO.puts(x) end)
```