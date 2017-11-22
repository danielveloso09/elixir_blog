defmodule Blog.Event do
  use Blog.Web, :model

  schema "events" do
    field :title, :string
    field :start_at, :naive_datetime
    field :end_at, :naive_datetime
    field :body, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :start_at, :end_at, :body])
    |> validate_required([:title, :start_at, :end_at, :body])
  end
end
