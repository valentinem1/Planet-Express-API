class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end

# t.integer :orbit_r_in_au
# t.integer :orbit_period_years
# t.integer :orbit_velocity_au_per_year
# t.integer :mean_long_j2000
# t.integer :mass_in_kg_x_10_19
# t.integer :planet_r_in_km
# t.integer :soi_in_km

# planets = {
#    "Mercury": {
#       name: "Mercury",
#       orbit_r_in_au: 0.387,
#       orbit_period_years: 0.241,
#       orbit_velocity_au_per_year: 10.099,
#       mean_long_j2000: 252.251,
#       mass_in_kg: 330000000000000000000000,
#       planet_r_in_km: 2440
#       image: ""
#    },