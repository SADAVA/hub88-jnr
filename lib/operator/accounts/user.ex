defmodule Operator.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :affiliate_id, :string
    field :birth_date, :naive_datetime
    field :name, :string
    field :registration_date, :naive_datetime
    field :sex, :string
    field :sub_partner_id, :string
    field :tags, {:array, :string}
    field :country, :id
    field :jurisdiction, :id

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:name, :sub_partner_id, :birth_date, :registration_date, :tags, :sex, :affiliate_id])
    |> validate_required([:name, :sub_partner_id, :birth_date, :registration_date, :tags, :sex, :affiliate_id])
    |> unique_constraint(:name)
  end
end
