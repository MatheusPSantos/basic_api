# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :basic_api,
  ecto_repos: [BasicApi.Repo]

# Configures the endpoint
config :basic_api, BasicApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "54WhcHow6tIFWR4AGKUZYLedvdPKzqMEkT044Ufb98HmBff3ifZvfNdS5Pm4d5Ji",
  render_errors: [view: BasicApiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: BasicApi.PubSub,
  live_view: [signing_salt: "PiT4s/ln"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
