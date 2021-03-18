defmodule NCAA.Server do
  @moduledoc """
  Server _site for development purposes
  """

  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    {:ok, pid} = StringIO.open("")
    NCAA.play(pid)

    resp_text = StringIO.flush(pid)
    StringIO.close(pid)

    send_resp(conn, 200, resp_text)
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
