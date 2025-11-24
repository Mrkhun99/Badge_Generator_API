defmodule BadgeApi.Businesses.BusinessAPIKey do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer,
    domain: BadgeApi.Businesses

  postgres do
    table("business_api_keys")
    repo(BadgeApi.Repo)
  end

  attributes do
    uuid_primary_key(:id)
    attribute(:api_key_hash, :string)
    attribute(:is_active, :boolean, default: true)
    attribute(:expired_at, :utc_datetime)
    attribute(:created_at, :utc_datetime, default: &DateTime.utc_now/0)

    attribute(:business_id, :uuid)
  end

  relationships do
    belongs_to(:business, BadgeApi.Businesses.Business,
      source_attribute: :business_id,
      allow_nil?: false
    )
  end
end
