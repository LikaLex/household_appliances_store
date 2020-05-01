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

ActiveRecord::Schema.define(version: 2020_05_01_175210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buyers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "passport_seria"
    t.integer "passport_number"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commodity_units", force: :cascade do |t|
    t.integer "count"
    t.bigint "storage_id"
    t.bigint "product_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_commodity_units_on_product_id"
    t.index ["storage_id"], name: "index_commodity_units_on_storage_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name"
    t.string "place"
    t.date "date_of_foundation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.date "date_of_issue"
    t.decimal "price"
    t.string "number"
    t.bigint "manufacturer_id"
    t.integer "guarantee_period"
    t.string "specific_characteristic"
    t.decimal "specific_characteristic_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["manufacturer_id"], name: "index_products_on_manufacturer_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.bigint "store_id"
    t.bigint "product_id"
    t.bigint "seller_id"
    t.bigint "buyer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["buyer_id"], name: "index_purchases_on_buyer_id"
    t.index ["product_id"], name: "index_purchases_on_product_id"
    t.index ["seller_id"], name: "index_purchases_on_seller_id"
    t.index ["store_id"], name: "index_purchases_on_store_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "employment_contract_number"
    t.bigint "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_sellers_on_store_id"
  end

  create_table "storages", force: :cascade do |t|
    t.string "number"
    t.string "name"
    t.bigint "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["store_id"], name: "index_storages_on_store_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "town"
    t.string "street"
    t.string "house"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
