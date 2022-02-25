defmodule Operator.Repo.Migrations.CreateWallets do
  use Ecto.Migration

  def change do
    create table(:wallets) do
      add :name, :string
      add :balance, :integer
      add :currency, references(:currencies, on_delete: :nothing)

      timestamps()
    end

    create unique_index(:wallets, [:name])
    create index(:wallets, [:currency])
  end
end
