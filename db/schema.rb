# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150628142938) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "participants", force: :cascade do |t|
    t.integer  "potluck_id"
    t.integer  "person_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "status",        default: "pending", null: false
    t.string   "venmo_payment"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "phone_number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "potlucks", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "owner_venmo"
    t.integer  "recipe_ids",               array: true
    t.integer  "total_cost"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
