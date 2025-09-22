defmodule MyException do
    def division(x,y) do
        if y==0 do
            raise "Cannot divide by zero"
        else
            x/y
        end
    end
    def test_division(x,y) do
        try do
            IO.puts("Dividing #{x} by #{y}")
            x/y
        rescue
            e in ArithmeticError -> IO.puts("#{e.message}")
            :error
        else
            result -> IO.puts("No error! Result is #{result}")
            result
        after
            "This always runs!"
        end
    end
end