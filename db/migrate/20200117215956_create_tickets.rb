class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.references :flight, null: false, foreign_key: true
      t.integer :price
      t.string :passenger_names
      t.integer :passenger_count

      t.timestamps
    end
  end
end
