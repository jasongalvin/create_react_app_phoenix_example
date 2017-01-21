defmodule CreateReactAppPhoenixExample.FoodViewTest do
  use CreateReactAppPhoenixExample.ConnCase, async: true
  alias CreateReactAppPhoenixExample.FoodView

  test "calculate fat_g for a food struct" do
    food_all_values = %{fa_sat_g: 1.0, fa_mono_g: 2.0, fa_poly_g: 1.5}
    food_some_values = %{fa_sat_g: nil, fa_mono_g: 0.5, fa_poly_g: nil}
    food_nil_values = %{fa_sat_g: nil, fa_mono_g: nil, fa_poly_g: nil}

    assert FoodView.calc_fat_g(food_all_values) == 4.5
    assert FoodView.calc_fat_g(food_some_values) == 0.5
    assert FoodView.calc_fat_g(food_nil_values) == 0.0
  end
end
