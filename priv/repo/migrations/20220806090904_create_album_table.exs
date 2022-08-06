defmodule EctoEmbeddedSchema.Repo.Migrations.CreateAlbumTable do
  use Ecto.Migration

  def change do
    create table(:albums_with_embeds) do
      add(:title, :string)
      add(:artist, :jsonb)
      add(:tracks, {:array, :jsonb}, default: [])
      end
  end
end
