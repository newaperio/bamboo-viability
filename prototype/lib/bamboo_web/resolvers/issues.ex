defmodule BambooWeb.Resolvers.Issues do
  alias Bamboo.Issues

  def list_guides(_parent, args, _resolution) do
    {:ok, Issues.list_guides(limit: args[:count])}
  end
end
