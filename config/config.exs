# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :carga,
  ecto_repos: [Carga.Repo]

# Configures Guardian
config :carga, Carga.Guardian,
  issuer: "carga",
  secret_key: "mzRoWUUAbgH4XOmfb9zoXh/3ErxUBlXDhP/1UH3DdvaMCqlp+em9VMFubctjMGOa"

# Configures GuardianPipeLine

config :carga, CargaWeb.Guardian.AuthAccessPipeline,
  module: Carga.Guardian,
  error_handler: CargaWeb.Guardian.AuthErrorHandler

# Configures the endpoint
config :carga, CargaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "4ntVSROhkwXahcj9VuTqRRm804z4eQcSd8Js0mF+6Tshn2MLEAPuzcDOdsl8Xg6p",
  render_errors: [view: CargaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Carga.PubSub, adapter: Phoenix.PubSub.PG2]

#Sets default locale
config :carga, CargaWeb.Gettext, default_locale: "es"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
