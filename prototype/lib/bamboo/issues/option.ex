defmodule Bamboo.Issues.Option do
  use Ecto.Schema

  alias Bamboo.Issues.{Guide, Action}

  @type t :: %__MODULE__{}

  schema "cga_option" do
    field :name, :string
    field :description, :string
    field :ordinal, :integer

    belongs_to :guide, Guide, foreign_key: :gamedef
    has_many :actions, Action, foreign_key: :cgaoption
  end
end
