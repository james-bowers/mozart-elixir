defmodule App.Router do
  use App, :router

  pipeline :contexts do
    plug App.Contexts.AdsPlug
  end

  scope "/" do
    pipe_through :contexts
    get "/status", App.PageControllers.BasePageController, :show
  end

end
