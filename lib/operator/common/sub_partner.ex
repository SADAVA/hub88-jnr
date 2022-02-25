defmodule Operator.Common.SubPartner do
  use Ecto.Schema
  import Ecto.Changeset

  schema "subpartners" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(sub_partner, attrs) do
    sub_partner
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
