defmodule Cond do
    def check_number(num) do
        cond do
            num*num == 4 -> "num is 2"
            num*num == 9 -> "num is 3"
            num*num == 16 -> "num is 4"
            true -> "No matches found"
        end
    end
end