defmodule Keymaster.Mixfile do
  use Mix.Project

  def project do
    [
      app: :keymaster,
      version: "0.0.2",
      elixir: "~> 1.2",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps,
      description: description,
      package: package,
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:plug, "~> 1.0"},
      {:poison, "~> 2.0"},
    ]
  end

  defp description do
    """
    An opinionated OAuth 2.0 server for Elixir projects.
    """
  end

  defp package do
    [# These are the default files included in the package
      name: :keymaster,
      files: ["config", "lib", "test", ".gitignore", "LICENSE*", "mix.exs", "README*"],
      maintainers: ["Austin S. Morris"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/austinsmorris/keymaster"},
    ]
  end
end
