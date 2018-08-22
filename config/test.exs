use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :carga, CargaWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :carga, Carga.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "carga_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
