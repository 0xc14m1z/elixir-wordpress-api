defmodule Wordpress_API.Mixfile do
  use Mix.Project

  def project do
    [app: :wordpress_api,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps,
     preferred_cli_env: [espec: :test]
   ]
  end

  def application do
    [applications: [:logger, :httpotion]]
  end

  defp deps do
    [
      {:espec, "~> 0.8.21", only: :test},     # test framwork
      {:xmlrpc_client, "0.0.1", github: "ciamiz/elixir-xmlrpc-client"}
    ]
  end
end
