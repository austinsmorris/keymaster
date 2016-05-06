defmodule Keymaster.Authorize.Plug do
  @behaviour Plug
  alias Plug.Conn

  def init(opts) do
    opts
  end

  def call(conn, _opts) do
    Conn.send_resp(conn, 200, Poison.encode!(%{access_token: "123abc"}))
  end
end
