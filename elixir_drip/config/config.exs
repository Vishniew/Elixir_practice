# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :elixir_drip_web, :generators,
  context_app: :elixir_drip

config :elixir_drip_web,
  ecto_repos: [ElixirDripWeb.Repo],
  generators: [context_app: :elixir_drip]

# Configures the endpoint
config :elixir_drip_web, ElixirDripWeb.Endpoint,
  url: [host: "localhost"],
  adapter: Bandit.PhoenixAdapter,
  render_errors: [
    formats: [html: ElixirDripWeb.ErrorHTML, json: ElixirDripWeb.ErrorJSON],
    layout: false
  ],
  pubsub_server: ElixirDripWeb.PubSub,
  live_view: [signing_salt: "g/JovZCK"]

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.25.4",
  elixir_drip_web: [
    args:
      ~w(js/app.js --bundle --target=es2022 --outdir=../priv/static/assets/js --external:/fonts/* --external:/images/* --alias:@=.),
    cd: Path.expand("../apps/elixir_drip_web/assets", __DIR__),
    env: %{"NODE_PATH" => [Path.expand("../deps", __DIR__), Mix.Project.build_path()]}
  ]

# Configure tailwind (the version is required)
config :tailwind,
  version: "4.1.7",
  elixir_drip_web: [
    args: ~w(
      --input=assets/css/app.css
      --output=priv/static/assets/css/app.css
    ),
    cd: Path.expand("../apps/elixir_drip_web", __DIR__)
  ]

# Configure Mix tasks and generators
config :elixir_drip,
  ecto_repos: [ElixirDrip.Repo]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :elixir_drip, ElixirDrip.Mailer, adapter: Swoosh.Adapters.Local

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#
import Config

# Configures Elixir's Logger
config :logger, :default_formatter,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
