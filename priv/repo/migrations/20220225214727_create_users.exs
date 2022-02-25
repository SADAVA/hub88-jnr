defmodule Operator.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :birth_date, :naive_datetime
      add :registration_date, :naive_datetime
      add :country, references(:countries, on_delete: :nothing)
      add :jurisdiction, references(:jurisdictions, on_delete: :nothing)
      add :sub_partner_id, references(:subpartners, on_delete: :nothing)
      add :sex, references(:sexes, on_delete: :nothing)
      add :affiliate_id, references(:affiliates, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:users, [:name])
    create index(:users, [:country])
    create index(:users, [:jurisdiction])
    create index(:users, [:sub_partner_id])
    create index(:users, [:sex])
    create index(:users, [:affiliate_id])
  end
end
