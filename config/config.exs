# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kanagora_back,
  ecto_repos: [KanagoraBack.Repo]

# Configures the endpoint
config :kanagora_back, KanagoraBackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "hqTzix/BKHfmFUh+rIv1OhD4fnWJBC707mE9RmxCZHi7MG1MU4CSgzxHe3s8a+vC",
  render_errors: [view: KanagoraBackWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: KanagoraBack.PubSub,
  live_view: [signing_salt: "bLaOKDQA"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
