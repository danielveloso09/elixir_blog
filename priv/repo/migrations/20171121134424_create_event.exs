defmodule Blog.Repo.Migrations.CreateEvent do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :title, :string
      add :start_at, :naive_datetime
      add :end_at, :naive_datetime
      add :body, :text

      timestamps()
    end
  end
end
