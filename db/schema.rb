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

ActiveRecord::Schema.define(version: 2020_08_02_082757) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consumable_keys", force: :cascade do |t|
    t.string "code"
    t.integer "uses_left"
    t.bigint "product_id", null: false
    t.string "key_owner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_consumable_keys_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "key_owner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "timed_keys", force: :cascade do |t|
    t.string "code"
    t.date "expiration_date"
    t.bigint "product_id", null: false
    t.string "key_owner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_timed_keys_on_product_id"
  end

  add_foreign_key "consumable_keys", "products"
  add_foreign_key "timed_keys", "products"
end
