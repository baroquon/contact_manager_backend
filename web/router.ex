defmodule ContactManagerBackend.Router do
  use ContactManagerBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json", "json-api"]
  end

  scope "/", ContactManagerBackend do
    pipe_through :api

    get "/", PageController, :index
    resources "/contacts", ContactController
  end
end

