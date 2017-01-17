defmodule CreateReactAppPhoenixExample.Food do
  use CreateReactAppPhoenixExample.Web, :model

  schema "foods" do
    field :ndb_no, :integer
    field :description, :string
    field :water_g, :float
    field :kcal, :float
    field :protein_g, :float
    field :lipid_total_g, :float
    field :ash_g, :float
    field :carbohydrate_g, :float
    field :fiber_td_g, :float
    field :sugar_g, :float
    field :calcium_mg, :float
    field :iron_mg, :float
    field :magnesium_mg, :float
    field :phosphorus_mg, :float
    field :potassium_mg, :float
    field :sodium_mg, :float
    field :zinc_mg, :float
    field :copper_mg, :float
    field :manganese_mg, :float
    field :selenium_ug, :float
    field :vit_c_mg, :float
    field :thiamin_mg, :float
    field :riboflavin_mg, :float
    field :niacin_mg, :float
    field :panto_acid_mg, :float
    field :vit_b6_mg, :float
    field :folate_tot_ug, :float
    field :folic_acid_ug, :float
    field :food_folate_ug, :float
    field :folate_dfe_ug, :float
    field :choline_tot_mg, :float
    field :vit_b12_ug, :float
    field :vit_a_iu, :float
    field :vit_a_rae, :float
    field :retinol_ug, :float
    field :alpha_carot_ug, :float
    field :beta_carot_ug, :float
    field :beta_crypt_ug, :float
    field :lycopene_ug, :float
    field :lut_and_zea_ug, :float
    field :vit_e_mg, :float
    field :vit_d_ug, :float
    field :vit_d_iu, :float
    field :vit_k_ug, :float
    field :fa_sat_g, :float
    field :fa_mono_g, :float
    field :fa_poly_g, :float
    field :cholestrl_mg, :float
    field :gmwt_1, :float
    field :gmwt_desc1, :string
    field :gmwt_2, :float
    field :gmwt_desc2, :string
    field :refuse_pct, :float

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:ndb_no, :description, :water_g, :kcal, :protein_g, :lipid_total_g, :ash_g, :carbohydrate_g, :fiber_td_g, :sugar_g, :calcium_mg, :iron_mg, :magnesium_mg, :phosphorus_mg, :potassium_mg, :sodium_mg, :zinc_mg, :copper_mg, :manganese_mg, :selenium_ug, :vit_c_mg, :thiamin_mg, :riboflavin_mg, :niacin_mg, :panto_acid_mg, :vit_b6_mg, :folate_tot_ug, :folic_acid_ug, :food_folate_ug, :folate_dfe_ug, :choline_tot_mg, :vit_b12_ug, :vit_a_iu, :vit_a_rae, :retinol_ug, :alpha_carot_ug, :beta_carot_ug, :beta_crypt_ug, :lycopene_ug, :lut_and_zea_ug, :vit_e_mg, :vit_d_ug, :vit_d_iu, :vit_k_ug, :fa_sat_g, :fa_mono_g, :fa_poly_g, :cholestrl_mg, :gmwt_1, :gmwt_desc1, :gmwt_2, :gmwt_desc2, :refuse_pct])
  end
end
