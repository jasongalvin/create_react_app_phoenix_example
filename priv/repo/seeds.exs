# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     CreateReactAppPhoenixExample.Repo.insert!(%CreateReactAppPhoenixExample.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias CreateReactAppPhoenixExample.Food
alias CreateReactAppPhoenixExample.Repo

defmodule CreateReactAppPhoenixExample.Seeds do

  def store_it(row) do
    changeset = Food.changeset(%Food{}, row)
    Repo.insert!(changeset)
  end

end

File.stream!("priv/repo/raw-ndb.csv")
  |> Stream.drop(1)
  |> CSV.decode(headers: [:ndb_no, :description, :water_g, :kcal, :protein_g, :lipid_total_g, :ash_g, :carbohydrate_g, :fiber_td_g, :sugar_g, :calcium_mg, :iron_mg, :magnesium_mg, :phosphorus_mg, :potassium_mg, :sodium_mg, :zinc_mg, :copper_mg, :manganese_mg, :selenium_ug, :vit_c_mg, :thiamin_mg, :riboflavin_mg, :niacin_mg, :panto_acid_mg, :vit_b6_mg, :folate_tot_ug, :folic_acid_ug, :food_folate_ug, :folate_dfe_ug, :choline_tot_mg, :vit_b12_ug, :vit_a_iu, :vit_a_rae, :retinol_ug, :alpha_carot_ug, :beta_carot_ug, :beta_crypt_ug, :lycopene_ug, :lut_and_zea_ug, :vit_e_mg, :vit_d_ug, :vit_d_iu, :vit_k_ug, :fa_sat_g, :fa_mono_g, :fa_poly_g, :cholestrl_mg, :gmwt_1, :gmwt_desc1, :gmwt_2, :gmwt_desc2, :refuse_pct])
  |> Enum.each(&CreateReactAppPhoenixExample.Seeds.store_it/1)
