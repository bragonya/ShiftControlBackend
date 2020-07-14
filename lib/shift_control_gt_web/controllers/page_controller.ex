defmodule ShiftControlGtWeb.PageController do
  use ShiftControlGtWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
