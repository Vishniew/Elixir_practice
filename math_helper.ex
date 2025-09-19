defmodule MathHelper do
    def division do
        fn
        (_dividend, 0) -> :infinity
        (dividend, divisor) -> dividend / divisor
        end
    end

    def multiplication do
        fn
        (num1,num2) -> num1 * num2
        end
    end

    def addition do
        fn
        (num1,num2) -> num1 + num2
        end
    end

    def subtraction do
        fn
        (num1,num2) -> num1 - num2
        end
    end
end