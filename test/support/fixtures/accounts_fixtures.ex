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
        affiliate_id: "some affiliate_id",
        birth_date: ~N[2022-02-24 22:38:00],
        name: unique_user_name(),
        registration_date: ~N[2022-02-24 22:38:00],
        sex: "some sex",
        sub_partner_id: "some sub_partner_id",
        tags: []
      })
      |> Operator.Accounts.create_user()

    user
  end
end
