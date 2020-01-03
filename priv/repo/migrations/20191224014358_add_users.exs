defmodule Pcrm.Repo.Migrations.AddUsers do
  use Ecto.Migration

  def change do
    create_if_not_exists table(:users) do
      add :email, :string, null: false
      add :password_digest, :string
      add :fname, :string
      add :lname, :string
      add :mname, :string

      timestamps()
      add :deleted_at, :datetime
    end

    create unique_index(:users, [:email])
  end
end
