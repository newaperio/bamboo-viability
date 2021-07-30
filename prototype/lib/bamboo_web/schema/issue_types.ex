defmodule BambooWeb.Schema.IssueTypes do
  use Absinthe.Schema.Notation
  import Absinthe.Resolution.Helpers, only: [dataloader: 1]
  alias Bamboo.Issues

  object :issue_guide do
    field :id, :id
    field :name, :string
    field :description, :string
    field :options, list_of(:option), resolve: dataloader(Issues)
  end

  object :option do
    field :id, :id
    field :name, :string
    field :description, :string
    field :ordinal, :integer
    field :actions, list_of(:action), resolve: dataloader(Issues)
  end

  object :action do
    field :id, :id
    field :description, :string
    field :ordinal, :integer
    field :drawbacks, list_of(:drawback), resolve: dataloader(Issues)
  end

  object :drawback do
    field :id, :id
    field :description, :string
    field :ordinal, :integer
  end
end
