defmodule BadgeApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :badge_api,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.8"},
      {:phoenix_ecto, "~> 4.5"},
      {:ecto_sql, "~> 3.13"},
      {:postgrex, ">= 0.0.0"},
      {:ash, "~> 3.7"},
      {:ash_postgres, "~> 2.6"},
      {:ash_authentication, "~> 4.13"},
      {:jason, "~> 1.4"}
    ]
  end
end
