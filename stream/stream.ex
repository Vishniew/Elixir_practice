defmodule MyStream do
    def streaming(list) do
    list   
        |> Stream.map(&(&1 + 1))
        |> Stream.zip(["a","b","c","d"])
        |> Enum.to_list()
    end
end