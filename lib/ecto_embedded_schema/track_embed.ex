defmodule EctoEmbeddedSchema.TrackEmbed do
  use Ecto.Schema

  embedded_schema do
    field(:title, :string)
    field(:duration, :integer)
  end
end
