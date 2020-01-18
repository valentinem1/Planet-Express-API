class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.references :planet, null: false, foreign_key: true
      t.string :ship
      t.integer :speed
      t.integer :capacity
      t.datetime :departure_date

      t.timestamps
    end
  end
end
