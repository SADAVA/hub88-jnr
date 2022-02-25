defmodule Operator.Repo.Migrations.CreateAffiliates do
  use Ecto.Migration

  def change do
    create table(:affiliates) do
      add :name, :string

      timestamps()
    end

    create unique_index(:affiliates, [:name])
  end
end
