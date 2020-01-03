defmodule Pcrm.Repo.Migrations.AddFriends do
  use Ecto.Migration

  def change do
    create_if_not_exists table(:friends) do
      add :email, :string, null: false
      add :fname, :string
      add :lname, :string
      add :mname, :string
      add :birth_date, :date

      add :user_id, references(:users, on_delete: :nilify_all)

      timestamps()
      add :deleted_at, :datetime
    end
  end
end
