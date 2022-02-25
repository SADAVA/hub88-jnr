defmodule Operator.Common.Affiliate do
  use Ecto.Schema
  import Ecto.Changeset

  schema "affiliates" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(affiliate, attrs) do
    affiliate
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
