defmodule OperatorWeb.UserController do
  use OperatorWeb, :controller

  def info(conn, params) do
    json(conn, %{body: params})
  end

  def balance(conn, params) do
    json(conn, %{body: params})
  end
end
