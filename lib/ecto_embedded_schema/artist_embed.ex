defmodule EctoEmbeddedSchema.ArtistEmbed do
  use Ecto.Schema

  embedded_schema do
    field(:name, :string)
  end
end
