defmodule CargaWeb.PageController do
  use CargaWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
