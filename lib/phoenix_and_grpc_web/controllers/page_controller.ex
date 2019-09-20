defmodule PhoenixAndGrpcWeb.PageController do
  use PhoenixAndGrpcWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
