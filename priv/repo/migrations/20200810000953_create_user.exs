defmodule KanagoraBack.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:usuarios) do
      add :nome, :string
      add :email, :string
      add :senha, :string

      timestamps()
    end
  end
end
