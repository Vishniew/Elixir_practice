defmodule DialyzerDemo do
  @moduledoc """
  Documentation for `DialyzerDemo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> DialyzerDemo.hello()
      :world

  """
  def hello do
    :world
  end
end

defmodule MathDemo do
  @moduledoc "Demo module for Dialyzer"

  # Typespec: add/2 receives two integers and returns an integer
  @spec add(integer, integer) :: float
  def add(a, b) do
    a + b
  end

  # Typespec: divide/2 receives two integers and returns a float
  @spec divide(integer, integer) :: float
  def divide(a, b) do
    a - b
  end
end
