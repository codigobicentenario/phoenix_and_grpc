# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phoenix_and_grpc, PhoenixAndGrpcWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yI4alK8mRqGC2amcVEzOLaS/5q9chul8e8XO3CtwX1z/uck5Q8SyKzNJRF1jHMG2",
  render_errors: [view: PhoenixAndGrpcWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PhoenixAndGrpc.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
