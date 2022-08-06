alias EctoEmbeddedSchema.{Repo, Album}

create_one_album = fn ->
  EctoEmbeddedSchema.create_album(%{
    title: "First album",
    tracks: [
      %{
        title: "first track",
        duration: 2
      }
    ],
    artist: %{
      name: "First artist",
      gender: "Male",
      age: 25
    }
  })
end

create_one_album_with_missing_value = fn ->
  EctoEmbeddedSchema.create_album(%{
    title: "Second album",
    tracks: [
      %{
        title: "first track"
      }
    ],
    artist: %{
      name: "Second artist",
    }
  })
end

create_one_album_with_multiple_tracks = fn ->
  EctoEmbeddedSchema.create_album(%{
    title: "Third album",
    tracks: [
      %{
        title: "first track"
      },
      %{
        title: "second track"
      },
      %{
        title: "third track"
      }
    ],
    artist: %{
      name: "Third artist",
    }
  })
end

update_album = fn ->
  album = EctoEmbeddedSchema.get_album_with_artist_name("Third artist")
  EctoEmbeddedSchema.update_album(album, %{
    title: "New third album",
    tracks: [
      %{
        title: "new first track"
      },
      %{
        title: "new second track"
      }
    ],
    artist: %{
      name: "New third artist",
    }
  })
end
