defmodule Bamboo.Repo do
  use Ecto.Repo,
    otp_app: :bamboo,
    adapter: Ecto.Adapters.Postgres
end
