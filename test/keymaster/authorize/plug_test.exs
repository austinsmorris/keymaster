defmodule Keymaster.Authorize.PlugTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts Keymaster.Authorize.Plug.init([])

  test "returns an access token" do
    conn = conn(:get, "/authorize")
    conn = Keymaster.Authorize.Plug.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == "{\"access_token\":\"123abc\"}"
  end
end
