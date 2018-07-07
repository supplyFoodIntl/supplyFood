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

ActiveRecord::Schema.define(version: 2018_07_07_132428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_cocoons", force: :cascade do |t|
    t.string "line_one"
    t.string "line_two"
    t.integer "zip_code"
    t.bigint "person_cocoon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_cocoon_id"], name: "index_address_cocoons_on_person_cocoon_id"
  end

  create_table "address_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.bigint "public_place_id"
    t.integer "private_place_number"
    t.bigint "private_place_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["private_place_type_id"], name: "index_addresses_on_private_place_type_id"
    t.index ["public_place_id"], name: "index_addresses_on_public_place_id"
  end

  create_table "addresses_people", id: false, force: :cascade do |t|
    t.bigint "person_id", null: false
    t.bigint "address_id", null: false
    t.index ["address_id", "person_id"], name: "index_addresses_people_on_address_id_and_person_id"
    t.index ["person_id", "address_id"], name: "index_addresses_people_on_person_id_and_address_id"
  end

  create_table "assingment_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.bigint "state_id"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_cities_on_country_id"
    t.index ["state_id"], name: "index_cities_on_state_id"
  end

  create_table "consent_form_types", force: :cascade do |t|
    t.string "description"
    t.text "html_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "consent_forms", force: :cascade do |t|
    t.bigint "consent_form_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_signed", default: false, null: false
    t.datetime "signed_at"
    t.datetime "valid_until"
    t.bigint "user_id"
    t.string "origin_url"
    t.index ["consent_form_type_id"], name: "index_consent_forms_on_consent_form_type_id"
    t.index ["user_id"], name: "index_consent_forms_on_user_id"
  end

  create_table "consumers", force: :cascade do |t|
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_consumers_on_person_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "alpha_2_code"
    t.string "alpha_3_code"
    t.integer "numeric_code"
    t.boolean "independent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donation_campaigns", force: :cascade do |t|
    t.bigint "address_id"
    t.datetime "date_start"
    t.datetime "date_end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_donation_campaigns_on_address_id"
  end

  create_table "donations", force: :cascade do |t|
    t.datetime "available_start"
    t.datetime "available_end"
    t.bigint "donor_id"
    t.bigint "volunteer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["donor_id"], name: "index_donations_on_donor_id"
    t.index ["volunteer_id"], name: "index_donations_on_volunteer_id"
  end

  create_table "donors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "form_contacts", force: :cascade do |t|
    t.string "name"
    t.string "subject"
    t.string "message"
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

  create_table "goods", force: :cascade do |t|
    t.date "Expiration_date"
    t.bigint "measure_unit_id"
    t.bigint "good_type_id"
    t.decimal "quantity"
    t.bigint "donation_id"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_goods_on_address_id"
    t.index ["donation_id"], name: "index_goods_on_donation_id"
    t.index ["good_type_id"], name: "index_goods_on_good_type_id"
    t.index ["measure_unit_id"], name: "index_goods_on_measure_unit_id"
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
    t.string "email"
    t.index ["ic_type_id"], name: "index_people_on_ic_type_id"
    t.index ["person_type_id"], name: "index_people_on_person_type_id"
  end

  create_table "person_cocoons", force: :cascade do |t|
    t.string "name"
    t.string "ic"
    t.bigint "ic_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ic_type_id"], name: "index_person_cocoons_on_ic_type_id"
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
    t.string "public_place_name"
  end

  create_table "private_place_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string "full_name"
    t.bigint "person_id"
    t.bigint "consumer_id"
    t.bigint "supplier_id"
    t.bigint "volunteer_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["consumer_id"], name: "index_profiles_on_consumer_id"
    t.index ["person_id"], name: "index_profiles_on_person_id"
    t.index ["supplier_id"], name: "index_profiles_on_supplier_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
    t.index ["volunteer_id"], name: "index_profiles_on_volunteer_id"
  end

  create_table "public_place_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "public_places", force: :cascade do |t|
    t.string "name"
    t.bigint "public_place_type_id"
    t.bigint "postal_code_hint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.index ["postal_code_hint_id"], name: "index_public_places_on_postal_code_hint_id"
    t.index ["public_place_type_id"], name: "index_public_places_on_public_place_type_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks_volunteers", id: false, force: :cascade do |t|
    t.bigint "volunteer_id", null: false
    t.bigint "rank_id", null: false
    t.index ["rank_id"], name: "index_ranks_volunteers_on_rank_id"
    t.index ["volunteer_id"], name: "index_ranks_volunteers_on_volunteer_id"
  end

  create_table "services", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services_volunteers", id: false, force: :cascade do |t|
    t.bigint "volunteer_id", null: false
    t.bigint "service_id", null: false
    t.index ["service_id"], name: "index_services_volunteers_on_service_id"
    t.index ["volunteer_id"], name: "index_services_volunteers_on_volunteer_id"
  end

  create_table "sqllogs", force: :cascade do |t|
    t.string "sql_executed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "alpha_2_code"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_states_on_country_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_suppliers_on_person_id"
  end

  create_table "supply_food_configurations", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "value"
    t.text "html_configuration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "volunteer_id"
    t.bigint "donor_id"
    t.bigint "consumer_id"
    t.bigint "supplier_id"
    t.string "full_name"
    t.string "ic"
    t.bigint "person_type_id"
    t.bigint "ic_type_id"
    t.index ["consumer_id"], name: "index_users_on_consumer_id"
    t.index ["donor_id"], name: "index_users_on_donor_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["ic_type_id"], name: "index_users_on_ic_type_id"
    t.index ["person_type_id"], name: "index_users_on_person_type_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["supplier_id"], name: "index_users_on_supplier_id"
    t.index ["volunteer_id"], name: "index_users_on_volunteer_id"
  end

  create_table "volunteers", force: :cascade do |t|
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_volunteers_on_person_id"
  end

  add_foreign_key "address_cocoons", "person_cocoons"
  add_foreign_key "addresses", "private_place_types"
  add_foreign_key "addresses", "public_places"
  add_foreign_key "cities", "countries"
  add_foreign_key "cities", "states"
  add_foreign_key "consent_forms", "consent_form_types"
  add_foreign_key "consent_forms", "users"
  add_foreign_key "consumers", "people"
  add_foreign_key "donation_campaigns", "addresses"
  add_foreign_key "donations", "donors"
  add_foreign_key "donations", "volunteers"
  add_foreign_key "good_types", "good_types"
  add_foreign_key "goods", "addresses"
  add_foreign_key "goods", "donations"
  add_foreign_key "goods", "good_types"
  add_foreign_key "goods", "measure_units"
  add_foreign_key "people", "ic_types"
  add_foreign_key "people", "person_types"
  add_foreign_key "person_cocoons", "ic_types"
  add_foreign_key "profiles", "consumers"
  add_foreign_key "profiles", "people"
  add_foreign_key "profiles", "suppliers"
  add_foreign_key "profiles", "users"
  add_foreign_key "profiles", "volunteers"
  add_foreign_key "public_places", "postal_code_hints"
  add_foreign_key "public_places", "public_place_types"
  add_foreign_key "states", "countries"
  add_foreign_key "suppliers", "people"
  add_foreign_key "users", "consumers"
  add_foreign_key "users", "donors"
  add_foreign_key "users", "ic_types"
  add_foreign_key "users", "person_types"
  add_foreign_key "users", "suppliers"
  add_foreign_key "users", "volunteers"
  add_foreign_key "volunteers", "people"
end
