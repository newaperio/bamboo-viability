defmodule Bamboo.Accounts do
  alias Bamboo.Repo
  alias __MODULE__.Participant

  def create_participant(params) do
    %Participant{}
    |> Participant.changeset(params)
    |> Repo.insert()
  end
end
