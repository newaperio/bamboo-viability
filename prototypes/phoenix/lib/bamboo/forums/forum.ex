defmodule Bamboo.Forums.Forum do
  use Ecto.Schema

  alias Bamboo.Issues.{Guide, Action}

  @type t :: %__MODULE__{}

  schema "game_invite" do
    field :name, :string
    field :start_at, :utc_datetime, source: :gamestart
    field :end_at, :utc_datetime, source: :gameend
    field :time_zone, :string, source: :gametimezone
  end
end
