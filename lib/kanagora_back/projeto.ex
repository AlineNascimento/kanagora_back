defmodule KanagoraBack.Projeto do
  use Ecto.Schema

  schema "projetos" do
    field :nome, :string
    belongs_to :usuario, KanagoraBack.Usuario
  end
end
