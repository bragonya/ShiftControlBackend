# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :shift_control_gt,
  ecto_repos: [ShiftControlGt.Repo]

# Configures the endpoint
config :shift_control_gt, ShiftControlGtWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VYthGjXiMVgDFIEg/zot8LeiW98nIHDtalDV44Z9h725RF/nu1JdIZIwyBRyF/Cq",
  render_errors: [view: ShiftControlGtWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ShiftControlGt.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
