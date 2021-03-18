defmodule NCAA.Server do
  @moduledoc """
  Server
  """

  require Logger

  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    {time, resp_text} =
      :timer.tc(fn ->
        {:ok, pid} = StringIO.open("")
        NCAA.play(pid)

        resp_text = StringIO.flush(pid)
        StringIO.close(pid)
        resp_text
      end)

    Logger.info("200: Calculated in #{time}µ")

    send_resp(conn, 200, resp_text)
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
