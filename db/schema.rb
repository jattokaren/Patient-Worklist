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

ActiveRecord::Schema.define(version: 20180414041722) do

  create_table "encounters", force: :cascade do |t|
    t.string   "entity_name"
    t.string   "patient_account_number"
    t.integer  "patient_age"
    t.string   "patient_sex"
    t.string   "zip_code"
    t.date     "discharge_date"
    t.integer  "patient_days"
    t.string   "service_line"
    t.string   "patient_type"
    t.string   "practitioner_record_name"
    t.string   "practitioner_record_specialty"
    t.float    "total_cost"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "encounter_id"
    t.string   "patient_account_number"
    t.text     "content"
    t.string   "staff_initials"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
