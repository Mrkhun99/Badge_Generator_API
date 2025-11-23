defmodule BadgeApi.Accounts.User do
  use Ash.Resource,
    otp_app: :badge_api,
    domain: BadgeApi.Accounts
end
