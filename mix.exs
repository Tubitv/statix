defmodule Statix.Mixfile do
  use Mix.Project

  @version "1.4.1-rc.1"
  @source_url "https://github.com/lexmag/statix"

  def project() do
    [
      app: :statix,
      version: @version,
      elixir: "~> 1.12",
      deps: deps(),

      # Hex
      description: description(),
      package: package(),

      # Docs
      name: "Statix",
      docs: docs()
    ]
  end

  def application() do
    [extra_applications: [:logger]]
  end

  defp description() do
    "Fast and reliable Elixir client for StatsD-compatible servers."
  end

  defp package() do
    %{
      organization: "tubitv",
      files: ~w(.formatter.exs mix.exs lib version),
      links: %{
        "GitHub" => @source_url
      }
    }
  end

  defp deps() do
    [{:ex_doc, "~> 0.34.2", only: :dev}]
  end

  defp docs() do
    [
      main: "Statix",
      source_ref: "v#{@version}",
      source_url: @source_url,
      extras: [
        "README.md",
        "CHANGELOG.md"
      ]
    ]
  end
end
