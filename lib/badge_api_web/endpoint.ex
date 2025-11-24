defmodule BadgeApiWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :badge_api

  plug(Plug.RequestId)
  plug(Plug.Logger)

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["*/*"],
    json_decoder: Jason
  )

  plug(BadgeApiWeb.Router)
end
