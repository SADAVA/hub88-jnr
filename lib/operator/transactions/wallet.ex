defmodule Operator.Transactions.Wallet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wallets" do
    field :balance, :integer
    field :name, :string
    field :currency, :id

    timestamps()
  end

  @doc false
  def changeset(wallet, attrs) do
    wallet
    |> cast(attrs, [:name, :balance])
    |> validate_required([:name, :balance])
    |> unique_constraint(:name)
  end
end
