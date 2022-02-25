defmodule Operator.Transactions.Bet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "bets" do
    field :amount, :integer
    field :transaction_uuid, :string
    field :round, :id
    field :currency, :id

    timestamps()
  end

  @doc false
  def changeset(bet, attrs) do
    bet
    |> cast(attrs, [:transaction_uuid, :amount])
    |> validate_required([:transaction_uuid, :amount])
    |> unique_constraint(:transaction_uuid)
  end
end
