import Config

config :badge_api,
  ash_domains: [
    BadgeApi,
    BadgeApi.Accounts
  ]

config :logger, level: :info
