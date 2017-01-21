defmodule CreateReactAppPhoenixExample.FoodController do
  use CreateReactAppPhoenixExample.Web, :controller

  alias CreateReactAppPhoenixExample.Food

  def index(conn, %{"q" => ""}), do: malformed(conn)

  def index(conn, %{"q" => q}) do
    foods = Repo.all(from f in Food, where: ilike(f.description, ^"%#{q}%"), limit: 100)
    render(conn, "index.json", foods: foods)
  end

  def index(conn, _params), do: malformed(conn)

  defp malformed(conn) do
    conn
    |> put_status(:bad_request)
    |> json(%{status: :bad_request})
  end
end
