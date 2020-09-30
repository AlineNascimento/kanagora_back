defmodule KanagoraBackWeb.PageController do
  use KanagoraBackWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
