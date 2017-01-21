defmodule CreateReactAppPhoenixExample.FoodView do
  use CreateReactAppPhoenixExample.Web, :view

  def render("index.json", %{foods: foods}) do
    render_many(foods, CreateReactAppPhoenixExample.FoodView, "food.json")
  end

  def render("food.json", %{food: food}) do
    %{description: food.description,
      fat_g: calc_fat_g(food),
      kcal: food.kcal,
      protein_g: food.protein_g,
      carbohydrate_g: food.carbohydrate_g}
  end

  def calc_fat_g(%{fa_sat_g:  sg,
                   fa_mono_g: mg,
                   fa_poly_g: pg}) do
    sg = sg || 0
    mg = mg || 0
    pg = pg || 0
    (sg + mg + pg)
    |> to_float()
    |> Float.round(2)
  end

  defp to_float(n) do
    n / 1
  end
end
