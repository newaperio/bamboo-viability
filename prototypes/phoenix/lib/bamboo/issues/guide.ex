defmodule Bamboo.Issues.Guide do
  use Ecto.Schema

  alias Bamboo.Issues.Option

  @type t :: %__MODULE__{}

  schema "cga_game_def" do
    field :name, :string
    field :description, :string

    has_many :options, Option, foreign_key: :gamedef
  end
end
