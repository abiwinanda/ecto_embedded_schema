import Config

config :ecto_embedded_schema, EctoEmbeddedSchema.Repo,
  username: "postgres",
  password: "postgres",
  database: "ecto_embedded_schema",
  hostname: "localhost"
