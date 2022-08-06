import Config

config :ecto_embedded_schema, :ecto_repos, [EctoEmbeddedSchema.Repo]

import_config "#{Mix.env()}.exs"
