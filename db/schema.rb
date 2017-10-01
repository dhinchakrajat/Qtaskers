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

ActiveRecord::Schema.define(version: 20171001192726) do

  create_table "repairs", force: :cascade do |t|
    t.boolean  "tv"
    t.boolean  "laptop"
    t.boolean  "washingMachine"
    t.boolean  "refrigerator"
    t.boolean  "geyser"
    t.boolean  "ac"
    t.boolean  "lights"
    t.boolean  "invertor"
    t.boolean  "houseWiring"
    t.integer  "shopkeeper_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "repairs", ["shopkeeper_id"], name: "index_repairs_on_shopkeeper_id"

  create_table "shopkeepers", force: :cascade do |t|
    t.string   "shopName"
    t.string   "ownerName"
    t.string   "address"
    t.string   "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
