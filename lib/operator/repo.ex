defmodule Operator.Repo do
  use Ecto.Repo,
    otp_app: :operator,
    adapter: Ecto.Adapters.Postgres
end
