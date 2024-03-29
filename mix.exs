defmodule GrizzlyQuickStart.MixProject do
  use Mix.Project

  @app :grizzly_quick_start
  @version "2.0.0"
  @all_targets [:rpi3]

  def project do
    [
      app: @app,
      version: @version,
      elixir: "~> 1.9",
      archives: [nerves_bootstrap: "~> 1.6"],
      start_permanent: Mix.env() == :prod,
      build_embedded: true,
      aliases: [loadconfig: [&bootstrap/1]],
      deps: deps(),
      releases: [{@app, release()}],
      preferred_cli_target: [run: :host, test: :host]
    ]
  end

  # Starting nerves_bootstrap adds the required aliases to Mix.Project.config()
  # Aliases are only added if MIX_TARGET is set.
  def bootstrap(args) do
    Application.start(:nerves_bootstrap)
    Mix.Task.run("loadconfig", args)
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {GrizzlyQuickStart.Application, []},
      extra_applications: [:logger, :runtime_tools]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # Dependencies for all targets
      {:nerves, "~> 1.5.0", runtime: false},
      {:shoehorn, "~> 0.6"},
      {:ring_logger, "~> 0.6"},
      {:toolshed, "~> 0.2"},

      # Dependencies for all targets except :host
      {:nerves_runtime, "~> 0.10", targets: @all_targets},
      {:busybox, "~> 0.1.3", targets: @all_targets},
      {:grizzly, "~> 0.6", targets: @all_targets},
      {:vintage_net, "~> 0.6", targets: @all_targets},
      {:mdns_lite, "~> 0.4", targets: @all_targets},
      {:nerves_time, "~> 0.2", targets: @all_targets},
      {:nerves_firmware_ssh, "~> 0.2", targets: @all_targets},

      # Dependencies for specific targets
      {:nerves_system_rpi3, "~> 1.9", runtime: false, targets: :rpi3}
    ]
  end

  def release do
    [
      overwrite: true,
      cookie: "#{@app}_cookie",
      include_erts: &Nerves.Release.erts/0,
      steps: [&Nerves.Release.init/1, :assemble],
      strip_beams: Mix.env() == :prod
    ]
  end
end
