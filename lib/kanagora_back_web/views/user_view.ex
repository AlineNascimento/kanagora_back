defmodule KanagoraBackWeb.UserView do
  use KanagoraBackWeb, :view

  def render("show.json", auth_token) do
    %{
      data: %{
        token: auth_token.token,
        name: auth_token.user.name,
        id: auth_token.user.id,
        email: auth_token.user.email,
        role: "user"
      }
    }
  end

end
