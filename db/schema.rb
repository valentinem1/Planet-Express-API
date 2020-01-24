# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_17_215956) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: :cascade do |t|
    t.integer "origin_id"
    t.integer "destination_id"
    t.string "ship_name"
    t.integer "capacity"
    t.datetime "departure"
    t.datetime "arrival"
    t.integer "days"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "flight_id", null: false
    t.integer "price"
    t.string "passenger_names"
    t.integer "passenger_count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["flight_id"], name: "index_tickets_on_flight_id"
  end

  add_foreign_key "tickets", "flights"
end
