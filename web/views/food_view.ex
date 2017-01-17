defmodule CreateReactAppPhoenixExample.FoodView do
  use CreateReactAppPhoenixExample.Web, :view

  def render("index.json", %{foods: foods}) do
    render_many(foods, CreateReactAppPhoenixExample.FoodView, "food.json")
  end

  def render("food.json", %{food: food}) do
    %{description: food.description,
      fat_g: food.fa_sat_g,
      kcal: food.kcal,
      protein_g: food.protein_g,
      carbohydrate_g: food.carbohydrate_g}
  end
end
