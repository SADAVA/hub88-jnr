defmodule Operator.Repo.Migrations.CreateSubpartners do
  use Ecto.Migration

  def change do
    create table(:subpartners) do
      add :name, :string

      timestamps()
    end

    create unique_index(:subpartners, [:name])
  end
end
