defmodule App.Contexts.AdsPlug do
  import Plug.Conn

  def init(options), do: options

  def call(conn, params) do
    put_private conn, :ads, true
  end
end