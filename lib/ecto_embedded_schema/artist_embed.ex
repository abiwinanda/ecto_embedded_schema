defmodule EctoEmbeddedSchema.ArtistEmbed do
  import Ecto.Changeset
  use Ecto.Schema

  embedded_schema do
    field(:name, :string)
    field(:gender, :string)
    field(:age, :integer)
  end

  @doc false
  def changeset(track, attrs) do
    track
    |> cast(attrs, [:name, :gender, :age])
    |> validate_required(:name)
  end
end
