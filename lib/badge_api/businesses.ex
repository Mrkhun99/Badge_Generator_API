defmodule BadgeApi.Businesses do
  use Ash.Domain

  resources do
    resource(BadgeApi.Businesses.Business)
    resource(BadgeApi.Businesses.BusinessAPIKey)
  end
end
