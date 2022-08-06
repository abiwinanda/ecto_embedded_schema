defmodule EctoEmbeddedSchema.Repo do
  use Ecto.Repo,
    otp_app: :ecto_embedded_schema,
    adapter: Ecto.Adapters.Postgres
end
