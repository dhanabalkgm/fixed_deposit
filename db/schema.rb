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

ActiveRecord::Schema.define(version: 20161022073351) do

  create_table "depositers", force: :cascade do |t|
    t.string   "name"
    t.text     "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deposits", force: :cascade do |t|
    t.integer  "amount"
    t.date     "deposited_on"
    t.integer  "depositer_id"
    t.integer  "interest_type_id"
    t.integer  "interest_percent_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["depositer_id"], name: "index_deposits_on_depositer_id"
    t.index ["interest_percent_id"], name: "index_deposits_on_interest_percent_id"
    t.index ["interest_type_id"], name: "index_deposits_on_interest_type_id"
  end

  create_table "interest_percents", force: :cascade do |t|
    t.float    "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interest_types", force: :cascade do |t|
    t.string   "name"
    t.boolean  "customized"
    t.integer  "days"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "interests", force: :cascade do |t|
    t.float    "amount"
    t.integer  "deposit_id"
    t.integer  "status"
    t.integer  "settled_through_id"
    t.datetime "settled_on"
    t.string   "comments"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["deposit_id"], name: "index_interests_on_deposit_id"
    t.index ["settled_through_id"], name: "index_interests_on_settled_through_id"
  end

  create_table "settled_throughs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
