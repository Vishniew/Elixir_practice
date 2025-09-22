defmodule Recursion do
    def double([]) ,do: []
    def double([head| tail]) do
        [head * 2 | double(tail)]
    end

    def multiply_list([]), do: 1
    def multiply_list([head | tail]) do
        head * multiply_list(tail)
    end

    def multiply_accumulator(list, accum \\ 1)      #function header
    def multiply_accumulator([],accum) ,do: accum   #base case
    def multiply_accumulator([head | tail],accum) do    #recursive case
        multiply_accumulator(tail, head * accum)
    end
end 