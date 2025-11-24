defmodule BadgeApi.Businesses.Business do
  use Ash.Resource,
    data_layer: AshPostgres.DataLayer,
    # extensions: [AshAuthentication.Resource],
    domain: BadgeApi.Businesses

  postgres do
    table("businesses")
    repo(BadgeApi.Repo)
  end

  attributes do
    uuid_primary_key(:id)
    attribute(:name, :string)
    attribute(:email, :string)
    attribute(:password_hash, :string)
    attribute(:created_at, :utc_datetime, default: &DateTime.utc_now/0)
    attribute(:updated_at, :utc_datetime, default: &DateTime.utc_now/0)
  end

  identities do
    identity(:email_unique, [:email])
  end

  # Relationships
  relationships do
    has_many(
      :api_keys,
      BadgeApi.Businesses.BusinessAPIKey,
      destination_attribute: :business_id
    )
  end

  actions do
    read(:read)
    read(:list)
    create(:create)
    update(:update)
    destroy(:destroy)
  end

  # Authentication config
  # authentication do
  #   api :default do
  #     strategy(AshAuthentication.Strategy.Password,
  #       identity_field: :email,
  #       password_field: :password_hash
  #     )
  #   end
  # end
end
