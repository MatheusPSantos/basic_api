# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :company_api,
  ecto_repos: [CompanyApi.Repo]

# Configures the endpoint
config :company_api, CompanyApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AQpNXd+keH8Q2yBFw9U0riQ3luKtvtyo7frxM1iOogvZqFoUYEvgg+6oJNXyVehI",
  render_errors: [view: CompanyApiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CompanyApi.PubSub,
  live_view: [signing_salt: "IS1BYad+"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
