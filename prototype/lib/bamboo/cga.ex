defmodule Bamboo.CGA do
  use Ecto.Repo,
    otp_app: :bamboo,
    adapter: Ecto.Adapters.Postgres,
    read_only: true
end
