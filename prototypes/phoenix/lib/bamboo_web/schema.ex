defmodule BambooWeb.Schema do
  use Absinthe.Schema
  import_types(BambooWeb.Schema.IssueTypes)

  alias BambooWeb.Resolvers
  alias Bamboo.Issues

  query do
    field :issue_guides, list_of(:issue_guide) do
      arg(:count, :integer)
      resolve(&Resolvers.Issues.list_guides/3)
    end
  end

  def context(ctx) do
    loader =
      Dataloader.new()
      |> Dataloader.add_source(Issues, Issues.data())

    Map.put(ctx, :loader, loader)
  end

  def plugins do
    [Absinthe.Middleware.Dataloader] ++ Absinthe.Plugin.defaults()
  end
end
