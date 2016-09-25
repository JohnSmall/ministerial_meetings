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

ActiveRecord::Schema.define(version: 20160925135540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hospitalities", force: :cascade do |t|
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.string   "type_of_hospitality"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "hospitality_organisation_people", force: :cascade do |t|
    t.integer  "hospitality_id"
    t.integer  "organisation_id"
    t.integer  "person_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["hospitality_id"], name: "index_hospitality_organisation_people_on_hospitality_id", using: :btree
    t.index ["organisation_id"], name: "index_hospitality_organisation_people_on_organisation_id", using: :btree
    t.index ["person_id"], name: "index_hospitality_organisation_people_on_person_id", using: :btree
  end

  create_table "hospitality_person_roles", force: :cascade do |t|
    t.integer  "hospitality_id"
    t.integer  "person_id"
    t.integer  "role_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["hospitality_id"], name: "index_hospitality_person_roles_on_hospitality_id", using: :btree
    t.index ["person_id"], name: "index_hospitality_person_roles_on_person_id", using: :btree
    t.index ["role_id"], name: "index_hospitality_person_roles_on_role_id", using: :btree
  end

  create_table "meeting_organisation_people", force: :cascade do |t|
    t.integer  "meeting_id"
    t.integer  "organisation_id"
    t.integer  "person_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["meeting_id"], name: "index_meeting_organisation_people_on_meeting_id", using: :btree
    t.index ["organisation_id"], name: "index_meeting_organisation_people_on_organisation_id", using: :btree
    t.index ["person_id"], name: "index_meeting_organisation_people_on_person_id", using: :btree
  end

  create_table "meeting_person_roles", force: :cascade do |t|
    t.integer  "meeting_id"
    t.integer  "person_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meeting_id"], name: "index_meeting_person_roles_on_meeting_id", using: :btree
    t.index ["person_id"], name: "index_meeting_person_roles_on_person_id", using: :btree
    t.index ["role_id"], name: "index_meeting_person_roles_on_role_id", using: :btree
  end

  create_table "meetings", force: :cascade do |t|
    t.integer  "day"
    t.integer  "month"
    t.integer  "year"
    t.string   "purpose_of_meeting"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "organisations", force: :cascade do |t|
    t.string   "name"
    t.string   "wikipedia_entry"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "organisations_people", id: false, force: :cascade do |t|
    t.integer "organisation_id", null: false
    t.integer "person_id",       null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "wikipedia_entry"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "people_roles", id: false, force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "role_id",   null: false
    t.index ["person_id", "role_id"], name: "index_people_roles_on_person_id_and_role_id", using: :btree
    t.index ["role_id", "person_id"], name: "index_people_roles_on_role_id_and_person_id", using: :btree
  end

  create_table "person_roles", force: :cascade do |t|
    t.integer  "person_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_person_roles_on_person_id", using: :btree
    t.index ["role_id"], name: "index_person_roles_on_role_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "wikipedia_entry"
  end

  add_foreign_key "hospitality_organisation_people", "hospitalities"
  add_foreign_key "hospitality_organisation_people", "organisations"
  add_foreign_key "hospitality_organisation_people", "people"
  add_foreign_key "hospitality_person_roles", "hospitalities"
  add_foreign_key "hospitality_person_roles", "people"
  add_foreign_key "hospitality_person_roles", "roles"
  add_foreign_key "meeting_organisation_people", "meetings"
  add_foreign_key "meeting_organisation_people", "organisations"
  add_foreign_key "meeting_organisation_people", "people"
  add_foreign_key "meeting_person_roles", "meetings"
  add_foreign_key "meeting_person_roles", "people"
  add_foreign_key "meeting_person_roles", "roles"
  add_foreign_key "person_roles", "people"
  add_foreign_key "person_roles", "roles"
end
