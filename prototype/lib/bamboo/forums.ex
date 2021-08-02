defmodule Bamboo.Forums do
  alias Bamboo.CGA
  alias __MODULE__.Forum

  def list_forums do
    CGA.all(Forum)
  end
end
