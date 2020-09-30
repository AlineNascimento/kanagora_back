defmodule KanagoraBack.Repo do
  use Ecto.Repo,
    otp_app: :kanagora_back,
    adapter: Ecto.Adapters.Postgres
end
