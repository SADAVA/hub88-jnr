defmodule Operator.Transactions.Round do
  use Ecto.Schema
  import Ecto.Changeset

  schema "rounds" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(round, attrs) do
    round
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
