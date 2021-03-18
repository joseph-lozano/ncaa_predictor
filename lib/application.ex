defmodule NCAA.Application do
  @moduledoc false
  use Application
  require Logger

  def start(_type, _args) do
    port =
      case Mix.env() do
        :prod ->
          80

        _ ->
          Logger.info("Starting application at http://localhost:4000")
          4000
      end

    children = [
      {Plug.Cowboy, scheme: :http, plug: NCAA.Server, options: [port: port]}
    ]

    opts = [strategy: :one_for_one, name: NCAA.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
