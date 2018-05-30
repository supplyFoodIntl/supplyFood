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

ActiveRecord::Schema.define(version: 2018_05_30_133729) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "configurations", primary_key: "idconfiguration", id: :integer, default: -> { "nextval('configurations_seq'::regclass)" }, force: :cascade do |t|
    t.string "dsconfiguration", limit: 45
    t.integer "vlconfiguration"
    t.datetime "create_time", default: -> { "now()" }
    t.text "html_configuration"
  end

  create_table "ic_types", force: :cascade do |t|
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

  create_table "public_place_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "people", "ic_types"
  add_foreign_key "people", "person_types"
end
