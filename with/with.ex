defmodule SafeMath do
  def safe_division(x,y,z) do
    with {:ok, first} <- safe_div(x,y),
          {:ok, result} <- safe_div(first,z) do
        {:ok, result}
    else
      :error -> {"error", "Division by zero"}
    end
  end

  def safe_div(_,0), do: :error
  def safe_div(x,y), do: {:ok, x/y}
end
