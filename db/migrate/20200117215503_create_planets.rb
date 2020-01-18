class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :distance
      t.string :image

      t.timestamps
    end
  end
end
