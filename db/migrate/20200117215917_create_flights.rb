class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.references :planet, null: false, foreign_key: true
      t.string :ship_name
      t.integer :capacity
      t.datetime :departure
      t.datetime :arrival

      t.timestamps
    end
  end
end

