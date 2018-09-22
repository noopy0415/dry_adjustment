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

ActiveRecord::Schema.define(version: 2018_09_22_064745) do

  create_table "adjs", force: :cascade do |t|
    t.integer "task_id"
    t.integer "container1"
    t.integer "container2"
    t.float "bag0"
    t.integer "bag1"
    t.integer "bag2"
    t.integer "bag3"
    t.integer "bag4"
    t.integer "bag5"
    t.text "adj_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dries", force: :cascade do |t|
    t.integer "task_id"
    t.integer "dry_id"
    t.float "init_moist"
    t.integer "dry_condition1"
    t.integer "dry_condition2"
    t.integer "dry_condition3"
    t.integer "dry_condition4"
    t.integer "dry_condition5"
    t.integer "dry_condition6"
    t.text "dry_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id"
    t.string "req_user_name"
    t.string "req_valiety"
    t.text "task_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
