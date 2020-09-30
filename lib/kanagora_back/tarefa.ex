defmodule KanagoraBack.Tarefa do
  use Ecto.Schema

  schema "tarefas" do
    field :nome, :string
    field :detalhes, :string
    field :data, :date
    belongs_to :usuario, KanagoraBack.Usuario
    belongs_to :projeto, KanagoraBack.Projeto
  end
end
