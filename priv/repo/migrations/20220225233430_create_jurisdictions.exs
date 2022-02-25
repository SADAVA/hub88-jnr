defmodule Operator.Repo.Migrations.CreateJurisdictions do
  use Ecto.Migration

  def change do
    create table(:jurisdictions) do
      add :name, :string

      timestamps()
    end

    create unique_index(:jurisdictions, [:name])
  end
end
