defmodule KanagoraBack.Repo.Migrations.CreateProjetos do
  use Ecto.Migration

  def change do
    create table (:projetos) do
      add :nome, :string
      add :usuario_id, references(:usuarios)
    end
  end
end
