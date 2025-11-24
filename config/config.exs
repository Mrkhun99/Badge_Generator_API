import Config

config :badge_api,
  ecto_repos: [BadgeApi.Repo],
  ash_domains: [
    # the domain with Business & BusinessAPIKey
    BadgeApi.Businesses
  ]

# Configure Ecto Repo for AshPostgres
config :badge_api, BadgeApi.Repo,
  username: "postgres",
  password: "9999",
  database: "badge_api_dev",
  hostname: "localhost",
  port: 5432,
  pool_size: 10

config :badge_api, BadgeApiWeb.Endpoint,
  url: [host: "localhost"],
  http: [port: 4000],
  secret_key_base: String.duplicate("a", 64),
  server: true

config :logger, level: :info
