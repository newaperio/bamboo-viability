defmodule Bamboo.Accounts.Participant do
  use Bamboo.Schema
  import Ecto.Changeset

  schema "participants" do
    field :name, :string
    field :phone_number, :string

    timestamps()
  end

  def changeset(participant, params) do
    participant
    |> cast(params, [:name, :phone_number])
    |> validate_required([:name, :phone_number])
    |> validate_format(:phone_number, ~r/^[0-9]{10}$/)
  end
end
