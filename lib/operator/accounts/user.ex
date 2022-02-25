defmodule Operator.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :birth_date, :naive_datetime
    field :name, :string
    field :registration_date, :naive_datetime
    field :country, :id
    field :jurisdiction, :id
    field :sub_partner_id, :id
    field :sex, :id
    field :affiliate_id, :id

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :birth_date, :registration_date])
    |> validate_required([:name, :birth_date, :registration_date])
    |> unique_constraint(:name)
  end
end
