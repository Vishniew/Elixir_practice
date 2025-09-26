defmodule ElixirDripWeb.PageController do
  use ElixirDripWeb, :controller

  def home(conn, _params) do
    render(conn, :home)
  end
end
