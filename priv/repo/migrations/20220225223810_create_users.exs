defmodule Operator.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :sub_partner_id, :string
      add :birth_date, :naive_datetime
      add :registration_date, :naive_datetime
      add :tags, {:array, :string}
      add :sex, :string
      add :affiliate_id, :string
      add :country, references(:countries, on_delete: :nothing)
      add :jurisdiction, references(:jurisdictions, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:users, [:name])
    create index(:users, [:country])
    create index(:users, [:jurisdiction])
  end
end
