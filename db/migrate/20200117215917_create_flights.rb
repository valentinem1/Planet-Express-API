class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      # t.references :origin #, class: :planet, null: false, foreign_key: true
      # t.references :destination #, class: :planet, null: false, foreign_key: true
      t.integer :origin_id
      t.integer :destination_id
      t.string :ship_name
      t.integer :capacity
      t.datetime :departure
      t.datetime :arrival
      t.integer :days

      t.timestamps
    end
  end
end

