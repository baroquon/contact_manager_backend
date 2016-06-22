defmodule ContactManagerBackend.PageController do
  use ContactManagerBackend.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
