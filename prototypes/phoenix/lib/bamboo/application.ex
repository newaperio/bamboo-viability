defmodule Bamboo.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repositories
      Bamboo.Repo,
      Bamboo.CGA,
      # Start the Telemetry supervisor
      BambooWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Bamboo.PubSub},
      # Start the Endpoint (http/https)
      BambooWeb.Endpoint
      # Start a worker by calling: Bamboo.Worker.start_link(arg)
      # {Bamboo.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Bamboo.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    BambooWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
