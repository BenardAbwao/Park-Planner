# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema[7.0].define(version: 2022_10_13_093303) do
  create_table "campsites", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.string "location"
    t.string "info"
    t.integer "park_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["park_id"], name: "index_campsites_on_park_id"
  end

  create_table "parks", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.string "location"
    t.string "info"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "park_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "user_id"
    t.integer "campsite_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["campsite_id"], name: "index_reservations_on_campsite_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"

    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  

  add_foreign_key "campsites", "parks"
  add_foreign_key "reservations", "campsites"
  add_foreign_key "reservations", "users"

end
