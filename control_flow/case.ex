defmodule Case do
    def lucky_ball(guess) do
        ball = Enum.random(1..10)
        case ball do
            ^guess -> "Your guess is correct"
            7 -> "The lucky ball is 7. Better luck next time!"
            9 -> "The lucky ball is 9. Better luck next time!"
            _ -> "The lucky ball is #{ball}. Your guess was #{guess}."
        end
    end
end