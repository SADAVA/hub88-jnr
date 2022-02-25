defmodule Operator.Common.Jurisdiction do
  use Ecto.Schema
  import Ecto.Changeset

  schema "jurisdictions" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(jurisdiction, attrs) do
    jurisdiction
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
