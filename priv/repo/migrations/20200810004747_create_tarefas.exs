defmodule KanagoraBack.Repo.Migrations.CreateTarefas do
  use Ecto.Migration

  def change do
    create table (:tarefas) do
      add :nome, :string
      add :detalhes, :string
      add :data, :date
      add :projeto_id, references(:projetos)
      add :usuario_id, references(:usuarios)
    end
  end
end
