defmodule Operator.Repo.Migrations.CreateBets do
  use Ecto.Migration

  def change do
    create table(:bets) do
      add :transaction_uuid, :string
      add :amount, :integer
      add :round, references(:rounds, on_delete: :nothing)
      add :currency, references(:currencies, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:bets, [:transaction_uuid])
    create index(:bets, [:round])
    create index(:bets, [:currency])
  end
end
