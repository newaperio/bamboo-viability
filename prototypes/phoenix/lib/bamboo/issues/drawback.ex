defmodule Bamboo.Issues.Drawback do
  use Ecto.Schema

  alias Bamboo.Issues.Action

  @type t :: %__MODULE__{}

  schema "cga_drawback" do
    field :description, :string
    field :ordinal, :integer

    belongs_to :action, Action, foreign_key: :cgaaction
  end
end
