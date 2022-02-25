defmodule Operator.Repo.Migrations.CreateSexes do
  use Ecto.Migration

  def change do
    create table(:sexes) do
      add :name, :string

      timestamps()
    end

    create unique_index(:sexes, [:name])
  end
end
