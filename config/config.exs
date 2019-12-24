# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pcrm,
  ecto_repos: [Pcrm.Repo]

# Configures the endpoint
config :pcrm, PcrmWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "fIYsi9Yac60bgf+5K6vVzQOn1c6l98T3qEJ47DKSh+9El1J/CU8bRLJBk06CtTbE",
  render_errors: [view: PcrmWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Pcrm.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
