# EctoEmbeddedSchema

Sample elixir app that uses Ecto embedded schema.

## Setup

1. The sample app uses postgres hence have it run locally by running `docker-compose up -d`.
2. Initialize the database by running `mix ecto.setup`.
3. Experiment with embedded schemas by performing CRUDs to album by using `iex -S mix`.
4. There are pre-defined CRUD functions in `.iex.exs` to make the experiment easier. Feel free to use them.
