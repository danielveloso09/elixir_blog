defmodule Blog.EventView do
  use Blog.Web, :view

  def render("index.json", %{events: events}) do
    %{
      events: Enum.map(events, &event_json/1)
    }
  end

  def event_json(event) do
    %{
      id: event.id,
      title: event.title,
      description: event.body,
      start: event.start_at,
      end: event.end_at
    }
  end
end
