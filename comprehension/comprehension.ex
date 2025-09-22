defmodule Comprehension do
    #Basic comprehension
    def square(list) do
        for x <- list ,do: x*x
    end

    #Multiple collections & filters
    def multiply(list1, list2) do
        require Integer
        for x <- list1, y <- list2 , Integer.is_odd(x), do: x*y
    end

    # into: - Converts default list into other collection
    def cube_list(list) do
        for x<-list, into: %{}, do: {x,x*x*x}
    end
end