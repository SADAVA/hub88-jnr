defmodule OperatorWeb.UserController do
  use OperatorWeb, :controller

  import Ecto.Query, warn: false

  def info(conn, params) do
    Operator.Repo.get_by!(Operator.Accounts.User, name: "john12345")
  end

  def balance(conn, params) do
    json(conn, %{body: params})
  end
end
