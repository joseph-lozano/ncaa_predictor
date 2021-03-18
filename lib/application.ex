defmodule NCAA.Application do
  @moduledoc false
  use Application
  require Logger

  def start(_type, _args) do
    children = [
      {Plug.Cowboy, scheme: :http, plug: NCAA.Server, options: [port: 4000]}
    ]

    opts = [strategy: :one_for_one, name: NCAA.Supervisor]

    Logger.info("Starting application at http://localhost:4000")

    Supervisor.start_link(children, opts)
  end
end
