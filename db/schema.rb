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

ActiveRecord::Schema.define(version: 2018_05_31_004503) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "configurations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "value"
    t.text "html_configuration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "good_types", force: :cascade do |t|
    t.string "name"
    t.bigint "good_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_type_id"], name: "index_good_types_on_good_type_id"
  end

  create_table "ic_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "observation"
  end

  create_table "logs", force: :cascade do |t|
    t.string "class_name"
    t.string "method_name"
    t.string "hash_parms"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measure_units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "ic"
    t.bigint "person_type_id"
    t.bigint "ic_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ic_type_id"], name: "index_people_on_ic_type_id"
    t.index ["person_type_id"], name: "index_people_on_person_type_id"
  end

  create_table "person_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "postal_code_hints", force: :cascade do |t|
    t.string "code"
    t.string "hint"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "public_place_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sqllogs", force: :cascade do |t|
    t.string "sql_executed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supply_food_configurations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.bigint "person_id"
    t.bigint "user_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_users_on_person_id"
    t.index ["user_type_id"], name: "index_users_on_user_type_id"
  end

  add_foreign_key "good_types", "good_types"
  add_foreign_key "people", "ic_types"
  add_foreign_key "people", "person_types"
  add_foreign_key "users", "people"
  add_foreign_key "users", "user_types"
end
