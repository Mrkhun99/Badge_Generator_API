defmodule BadgeApiWeb.BusinessController do
  use BadgeApiWeb, :controller

  alias BadgeApi.Businesses.Business

  def index(conn, _params) do
    {:ok, list} = BadgeApi.Businesses.read(Business)
    json(conn, list)
  end

  def create(conn, params) do
    {:ok, business} =
      Business
      |> Ash.Changeset.for_create(:create, params)
      |> Ash.create()

    json(conn, business)
  end
end
