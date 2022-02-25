defmodule Operator.Common.Sex do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sexes" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(sex, attrs) do
    sex
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
