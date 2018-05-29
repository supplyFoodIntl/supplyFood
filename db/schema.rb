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

ActiveRecord::Schema.define(version: 2018_05_25_183630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresstypes", primary_key: "idaddresstype", id: :integer, default: -> { "nextval('addresstypes_seq'::regclass)" }, force: :cascade do |t|
    t.string "nmaddresstype", limit: 45
    t.datetime "create_time", default: -> { "now()" }
  end

  create_table "configurations", primary_key: "idconfiguration", id: :integer, default: -> { "nextval('configurations_seq'::regclass)" }, force: :cascade do |t|
    t.string "dsconfiguration", limit: 45
    t.integer "vlconfiguration"
    t.datetime "create_time", default: -> { "now()" }
    t.text "html_configuration"
  end

  create_table "ictypes", primary_key: "idictype", id: :integer, default: -> { "nextval('ictypes_seq'::regclass)" }, force: :cascade do |t|
    t.string "nmidentificationcard", limit: 45
    t.datetime "create_time", default: -> { "now()" }
  end

  create_table "people", primary_key: "idperson", id: :integer, default: -> { "nextval('people_seq'::regclass)" }, force: :cascade do |t|
    t.string "nmperson", limit: 45
    t.datetime "create_time", default: -> { "now()" }
    t.integer "pt_idpersontype", null: false
    t.integer "ict_idictype", null: false
  end

  create_table "persontypes", primary_key: "idpersontype", id: :integer, default: -> { "nextval('persontypes_seq'::regclass)" }, force: :cascade do |t|
    t.string "dspersontype", limit: 20
    t.datetime "create_time", default: -> { "now()" }
  end

  create_table "publicplacetypes", primary_key: "idpublicplacetype", id: :integer, default: -> { "nextval('publicplacetypes_seq'::regclass)" }, force: :cascade do |t|
    t.string "dspublicplacetype", limit: 45
    t.datetime "create_time", default: -> { "now()" }
  end

  create_table "usertypes", primary_key: "idusertype", id: :integer, default: -> { "nextval('usertypes_seq'::regclass)" }, force: :cascade do |t|
    t.string "nmusertype", limit: 45
    t.datetime "create_time", default: -> { "now()" }
  end

  add_foreign_key "people", "ictypes", column: "ict_idictype", primary_key: "idictype", name: "fk_Person_ICType1_idx"
  add_foreign_key "people", "persontypes", column: "pt_idpersontype", primary_key: "idpersontype", name: "fk_Person_PersonType1_idx"
end
