defmodule MapKeys.MixProject do
  use Mix.Project

  def project do
    [
      app: :map_keys,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package()

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
      {:key_tools, "~> 0.4.0"},
      {:atomic_map, "~> 0.9.2"},
      {:proper_case, "~> 1.0"}
    ]
  end

    defp package do
    [
      name: :map_keys,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["ontofractal"],
      description:
        "Unsurprisingly, MapKeys is a module for manipulation of map keys",
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/ontofractal/map_keys"
      }
    ]
  end

end
