# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_06_100138) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_types", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.bigint "user_id"
    t.index ["project_id"], name: "index_favorites_on_project_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.integer "project_ref"
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "project_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "project_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_project_categories_on_category_id"
    t.index ["project_id"], name: "index_project_categories_on_project_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "short_description"
    t.text "long_description"
    t.string "provider"
    t.integer "amount_needed"
    t.integer "amount_collected"
    t.integer "minimum_investment"
    t.string "exit_timing"
    t.string "city"
    t.string "financial_product"
    t.text "project_manager_profile"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "project_url"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id"
    t.bigint "company_type_id"
    t.float "latitude"
    t.float "longitude"
    t.integer "price_cents", default: 0, null: false
    t.index ["company_type_id"], name: "index_projects_on_company_type_id"
    t.index ["location_id"], name: "index_projects_on_location_id"
  end

  create_table "user_categories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_user_categories_on_category_id"
    t.index ["user_id"], name: "index_user_categories_on_user_id"
  end

  create_table "user_company_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "company_type_id"
    t.bigint "user_id"
    t.index ["company_type_id"], name: "index_user_company_types_on_company_type_id"
    t.index ["user_id"], name: "index_user_company_types_on_user_id"
  end

  create_table "user_locations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "location_id"
    t.bigint "user_id"
    t.index ["location_id"], name: "index_user_locations_on_location_id"
    t.index ["user_id"], name: "index_user_locations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "maximum_investment"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "favorites", "projects"
  add_foreign_key "favorites", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "project_categories", "categories"
  add_foreign_key "project_categories", "projects"
  add_foreign_key "projects", "company_types"
  add_foreign_key "projects", "locations"
  add_foreign_key "user_categories", "categories"
  add_foreign_key "user_categories", "users"
  add_foreign_key "user_company_types", "company_types"
  add_foreign_key "user_company_types", "users"
  add_foreign_key "user_locations", "locations"
  add_foreign_key "user_locations", "users"
end
