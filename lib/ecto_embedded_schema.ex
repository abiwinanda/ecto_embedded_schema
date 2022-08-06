defmodule EctoEmbeddedSchema do
  import Ecto.Query, warn: false
  alias EctoEmbeddedSchema.{Repo, Album}

  def get_album(id) do
    Repo.get(Album, id)
  end

  def get_album_with_artist_name(artist) do
    query = from(a in Album, where: a.artist["name"] == ^artist)
    Repo.one(query)
  end

  def get_album_with_track_name(track) do
    query =
      from(a in Album,
        where: fragment("? @> ?", a.tracks, ^Jason.encode!([%{"title" => track}]))
      )

    Repo.one(query)
  end

  def create_album(attrs \\ %{}) do
    %Album{}
    |> Album.changeset(attrs)
    |> Repo.insert()
  end

  def update_album(%Album{} = album, attrs) do
    album
    |> Album.changeset(attrs)
    |> Repo.update()
  end
end
