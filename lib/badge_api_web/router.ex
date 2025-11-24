defmodule BadgeApiWeb.Router do
  use Phoenix.Router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/api", BadgeApiWeb do
    pipe_through(:api)

    get("/businesses", BusinessController, :index)
    post("/businesses", BusinessController, :create)
  end
end
