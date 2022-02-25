defmodule Operator.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Operator.Accounts` context.
  """

  @doc """
  Generate a unique user name.
  """
  def unique_user_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        birth_date: ~N[2022-02-24 21:47:00],
        name: unique_user_name(),
        registration_date: ~N[2022-02-24 21:47:00]
      })
      |> Operator.Accounts.create_user()

    user
  end
end
