defmodule CreateReactAppPhoenixExample.FoodController do
  use CreateReactAppPhoenixExample.Web, :controller

  alias CreateReactAppPhoenixExample.Food

  def index(conn, params) do
    q = params["q"]
    foods = Repo.all(from f in Food, where: ilike(f.description, ^"%#{q}%"), limit: 100)
    render(conn, "index.json", foods: foods)
  end
end
