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

ActiveRecord::Schema.define(version: 2021_02_16_132025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_lists", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "specialty_id", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_customer_lists_on_customer_id"
    t.index ["specialty_id"], name: "index_customer_lists_on_specialty_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "island_id", null: false
    t.index ["island_id"], name: "index_customers_on_island_id"
  end

  create_table "islands", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.datetime "date_of_event"
    t.string "commentary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "service_provider_id", null: false
    t.bigint "customer_id", null: false
    t.index ["customer_id"], name: "index_meetings_on_customer_id"
    t.index ["service_provider_id"], name: "index_meetings_on_service_provider_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "purchased_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_id", null: false
    t.bigint "service_provider_id", null: false
    t.integer "quantity"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["service_provider_id"], name: "index_orders_on_service_provider_id"
  end

  create_table "service_providers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "specialty_id", null: false
    t.bigint "island_id", null: false
    t.index ["island_id"], name: "index_service_providers_on_island_id"
    t.index ["specialty_id"], name: "index_service_providers_on_specialty_id"
  end

  create_table "specialties", force: :cascade do |t|
    t.string "job_name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "customer_lists", "customers"
  add_foreign_key "customer_lists", "specialties"
  add_foreign_key "customers", "islands"
  add_foreign_key "meetings", "customers"
  add_foreign_key "meetings", "service_providers"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "service_providers"
  add_foreign_key "service_providers", "islands"
  add_foreign_key "service_providers", "specialties"
end
