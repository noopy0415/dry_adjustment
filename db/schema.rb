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

ActiveRecord::Schema.define(version: 2018_10_02_121145) do

  create_table "adjs", force: :cascade do |t|
    t.integer "task_id"
    t.integer "trader_id"
    t.integer "container"
    t.boolean "container_shipment"
    t.integer "bag"
    t.boolean "bag_shipment"
    t.float "half"
    t.boolean "half_shipment"
    t.text "adj_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "body"
    t.boolean "end_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "driers", force: :cascade do |t|
    t.string "name"
    t.float "scale"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dries", force: :cascade do |t|
    t.integer "task_id"
    t.integer "drier_id"
    t.float "init_moist"
    t.float "dry_condition1"
    t.float "dry_condition2"
    t.float "dry_condition3"
    t.float "dry_condition4"
    t.float "dry_condition5"
    t.float "dry_condition6"
    t.text "dry_note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.integer "user_id"
    t.string "req_user_name"
    t.string "req_valiety"
    t.text "task_note"
    t.boolean "task_act"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "traders", force: :cascade do |t|
    t.string "name"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
