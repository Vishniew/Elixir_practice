defmodule IfElse do
    def greater_than_0(num) do
        if num > 0 do
            IO.puts("{num} is greater than 0!")
        else
            IO.puts("{num} is 0 or less!")
        end
    end
end

defmodule UnlessElse do
    def greater_than_13(num) do
        unless num > 13 do
            IO.puts("{num} is 13 or less!")
        else
            IO.puts("{num} is greater than 13!")
        end
    end
end

