defmodule BlackBox.MixProject do
  use Mix.Project

  @description """
    Simple API wrapper for http://blackbox.co.ke
  """

  def project do
    [
      app: :black_box,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: @description
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :httpotion, :elixir_xml_to_map]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:httpotion, "~> 3.1.0"},
      {:elixir_xml_to_map, "~> 0.1"},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp package do
    [
      maintainers: ["John invictus"],
      licenses: ["Apache 2.0"],
      links: %{"Github" => "https://github.com/johninvictus/black_box"}
    ]
  end
end
