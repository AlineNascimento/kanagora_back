defmodule KanagoraBack.Usuario do
  use Ecto.Schema

  schema "usuarios" do
    field :nome, :string
    field :email, :string
    field :senha, :string
    has_many :projetos, KanagoraBack.Projeto
    has_many :tarefas, KanagoraBack.Tarefa
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:nome])
    |> validate_required([:nome])
  end


end
