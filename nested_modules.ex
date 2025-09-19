defmodule NestedModules do
    defmodule StringHelper do
        def greet(name) do
            IO.puts("Hello, #{name}!")
        end

        def is_palindrome?(string) do
            string == String.reverse(string)
        end
    end

    defmodule MathHelper do
        def add(x,y), do: x+y 
        def sub(x,y), do: x-y 
        def mul(x,y), do: x*y 
        def div(_x,0), do: :infinity 
        def div(x,y), do: x/y 
    end

    def outer_module_function(), do: IO.puts("Outer module function!")
end