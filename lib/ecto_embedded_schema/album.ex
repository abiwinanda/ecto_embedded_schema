defmodule EctoEmbeddedSchema.Album do
  import Ecto.Changeset
  use Ecto.Schema
  alias EctoEmbeddedSchema.{ArtistEmbed, TrackEmbed}

  schema "albums_with_embeds" do
    field(:title, :string)
    embeds_one(:artist, ArtistEmbed, on_replace: :update)
    embeds_many(:tracks, TrackEmbed, on_replace: :delete)
  end

  @doc false
  def changeset(album, attrs) do
    album
    |> cast(attrs, [:title])
    |> cast_embed(:artist, required: true)
    |> cast_embed(:tracks, required: true)
  end
end
