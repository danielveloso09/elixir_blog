# require IEx
defmodule Blog.CalendarController do
  use Blog.Web, :controller

  alias Blog.Calendar

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
