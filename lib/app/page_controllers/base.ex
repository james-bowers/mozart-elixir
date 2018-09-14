defmodule App.PageControllers.BasePageController do
  use App, :controller

  def show(conn, _params) do
    text conn, "Hello ads are #{inspect conn.private.ads}"
  end
end