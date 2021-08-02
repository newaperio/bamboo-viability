defmodule Bamboo.Issues do
  alias Bamboo.CGA
  alias __MODULE__.Guide

  import Ecto.Query

  def list_guides(opts \\ []) do
    preload = opts[:preload] || []
    limit = opts[:limit] || nil

    Guide
    |> limit(^limit)
    |> CGA.all()
    |> CGA.preload(preload)
  end

  def data() do
    Dataloader.Ecto.new(CGA, query: &query/2)
  end

  def query(queryable, _params) do
    queryable
  end
end
