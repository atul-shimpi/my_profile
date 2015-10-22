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

ActiveRecord::Schema.define(version: 20151021214753) do

  create_table "my_app_uis", force: :cascade do |t|
    t.integer "my_app_id",  limit: 4
    t.string  "name",       limit: 255
    t.string  "image_path", limit: 255
  end

  add_index "my_app_uis", ["my_app_id"], name: "index_my_app_uis_on_my_app_id", using: :btree

  create_table "my_apps", force: :cascade do |t|
    t.string "domain",       limit: 255
    t.string "description",  limit: 255
    t.string "technologies", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "visitors", force: :cascade do |t|
    t.string   "remote_ip",   limit: 255
    t.string   "remote_host", limit: 255
    t.string   "server_name", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
