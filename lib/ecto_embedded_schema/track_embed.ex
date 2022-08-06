defmodule EctoEmbeddedSchema.TrackEmbed do
  import Ecto.Changeset
  use Ecto.Schema

  embedded_schema do
    field(:title, :string)
    field(:duration, :integer)
  end

  @doc false
  def changeset(track, attrs) do
    track
    |> cast(attrs, [:title, :duration])
    |> validate_required(:title)
  end
end
