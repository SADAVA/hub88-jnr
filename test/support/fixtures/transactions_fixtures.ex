defmodule Operator.TransactionsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Operator.Transactions` context.
  """

  @doc """
  Generate a unique wallet name.
  """
  def unique_wallet_name, do: "some name#{System.unique_integer([:positive])}"

  @doc """
  Generate a wallet.
  """
  def wallet_fixture(attrs \\ %{}) do
    {:ok, wallet} =
      attrs
      |> Enum.into(%{
        balance: 42,
        name: unique_wallet_name()
      })
      |> Operator.Transactions.create_wallet()

    wallet
  end

  @doc """
  Generate a unique bet transaction_uuid.
  """
  def unique_bet_transaction_uuid, do: "some transaction_uuid#{System.unique_integer([:positive])}"

  @doc """
  Generate a bet.
  """
  def bet_fixture(attrs \\ %{}) do
    {:ok, bet} =
      attrs
      |> Enum.into(%{
        amount: 42,
        transaction_uuid: unique_bet_transaction_uuid()
      })
      |> Operator.Transactions.create_bet()

    bet
  end
end
