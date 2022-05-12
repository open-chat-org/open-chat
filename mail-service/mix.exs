defmodule MailService.MixProject do
  use Mix.Project

  def project do
    [
      app: :mail_service,
      version: "0.1.0",
      elixir: "~> 1.13",
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

  defp deps do
    [
			{:bamboo, "~> 2.2.0"},
			{:bamboo_ses, "~> 0.2.0"},
			{:configparser_ex, "~> 4.0"}
    ]
  end
end
