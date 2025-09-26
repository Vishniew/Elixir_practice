defmodule ElixirDrip.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ElixirDrip.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        email: "some email",
        name: "some name"
      })
      |> ElixirDrip.Accounts.create_user()

    user
  end

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        contact: 42,
        email: "some email",
        name: "some name"
      })
      |> ElixirDrip.Accounts.create_user()

    user
  end
end
