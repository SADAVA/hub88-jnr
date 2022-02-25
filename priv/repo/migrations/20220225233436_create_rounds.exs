defmodule Operator.Repo.Migrations.CreateRounds do
  use Ecto.Migration

  def change do
    create table(:rounds) do
      add :name, :string

      timestamps()
    end

    create unique_index(:rounds, [:name])
  end
end
