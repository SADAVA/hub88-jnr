defmodule OperatorWeb.PageController do
  use OperatorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
