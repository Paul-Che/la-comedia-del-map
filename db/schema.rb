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

ActiveRecord::Schema.define(version: 20160315152217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "birthday"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "play_title"
    t.integer  "play_id"
  end

  create_table "plays", force: :cascade do |t|
    t.string   "start_date"
    t.string   "end_date"
    t.text     "synopsys"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
  end

  create_table "theater_plays", force: :cascade do |t|
    t.integer  "play_id"
    t.integer  "theater_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "theater_plays", ["play_id"], name: "index_theater_plays_on_play_id", using: :btree
  add_index "theater_plays", ["theater_id"], name: "index_theater_plays_on_theater_id", using: :btree

  create_table "theaters", force: :cascade do |t|
    t.string   "name"
    t.integer  "places"
    t.string   "start_date"
    t.string   "end_date"
    t.integer  "play_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "theaters", ["play_id"], name: "index_theaters_on_play_id", using: :btree

  create_table "tickets", force: :cascade do |t|
    t.string   "name_show"
    t.integer  "price"
    t.date     "date"
    t.string   "client"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "play_id"
  end

  add_index "tickets", ["play_id"], name: "index_tickets_on_play_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "theater_plays", "plays"
  add_foreign_key "theater_plays", "theaters"
  add_foreign_key "theaters", "plays"
end
