defmodule MozartWeb.Router do
  use MozartWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", MozartWeb do
    pipe_through :api
  end
end
