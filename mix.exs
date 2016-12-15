defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [
      app:             :issues,
      escript:         escript_config,
      version:         "0.1.0",
      name:            "Issues",
      source_url:      "https://github.com/jasonpilz/issues",
      elixir:          "~> 1.3",
      build_embedded:  Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps:            deps()
    ]
  end

  # Configuration for the OTP application
  def application do
    [applications: [:logger, :httpoison]]
  end

  defp deps do
    [
      {:httpoison, "~> 0.9"},
      {:poison,    "~> 1.5"},
      {:ex_doc,   "~> 0.14"},
      {:earmark,  "~> 1.0"},
      {:inch_ex, only: :docs}
    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI ]
  end
end
