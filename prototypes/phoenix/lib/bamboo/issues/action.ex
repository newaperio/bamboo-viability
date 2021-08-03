defmodule Bamboo.Issues.Action do
  use Ecto.Schema

  alias Bamboo.Issues.{Option, Drawback}

  @type t :: %__MODULE__{}

  schema "cga_action" do
    field :description, :string
    field :ordinal, :integer

    belongs_to :option, Option, foreign_key: :cgaoption
    has_many :drawbacks, Drawback, foreign_key: :cgaaction
  end
end
