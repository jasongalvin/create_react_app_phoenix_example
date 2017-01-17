defmodule CreateReactAppPhoenixExample.Repo.Migrations.CreateFood do
  use Ecto.Migration

  def change do
    create table(:foods) do
      add :ndb_no, :integer
      add :description, :string
      add :water_g, :float
      add :kcal, :float
      add :protein_g, :float
      add :lipid_total_g, :float
      add :ash_g, :float
      add :carbohydrate_g, :float
      add :fiber_td_g, :float
      add :sugar_g, :float
      add :calcium_mg, :float
      add :iron_mg, :float
      add :magnesium_mg, :float
      add :phosphorus_mg, :float
      add :potassium_mg, :float
      add :sodium_mg, :float
      add :zinc_mg, :float
      add :copper_mg, :float
      add :manganese_mg, :float
      add :selenium_ug, :float
      add :vit_c_mg, :float
      add :thiamin_mg, :float
      add :riboflavin_mg, :float
      add :niacin_mg, :float
      add :panto_acid_mg, :float
      add :vit_b6_mg, :float
      add :folate_tot_ug, :float
      add :folic_acid_ug, :float
      add :food_folate_ug, :float
      add :folate_dfe_ug, :float
      add :choline_tot_mg, :float
      add :vit_b12_ug, :float
      add :vit_a_iu, :float
      add :vit_a_rae, :float
      add :retinol_ug, :float
      add :alpha_carot_ug, :float
      add :beta_carot_ug, :float
      add :beta_crypt_ug, :float
      add :lycopene_ug, :float
      add :lut_and_zea_ug, :float
      add :vit_e_mg, :float
      add :vit_d_ug, :float
      add :vit_d_iu, :float
      add :vit_k_ug, :float
      add :fa_sat_g, :float
      add :fa_mono_g, :float
      add :fa_poly_g, :float
      add :cholestrl_mg, :float
      add :gmwt_1, :float
      add :gmwt_desc1, :string
      add :gmwt_2, :float
      add :gmwt_desc2, :string
      add :refuse_pct, :float

      timestamps()
    end

  end
end
