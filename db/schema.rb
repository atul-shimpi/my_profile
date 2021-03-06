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

ActiveRecord::Schema.define(version: 20160523191102) do

  create_table "my_app_uis", force: :cascade do |t|
    t.integer "my_app_id",  limit: 4
    t.string  "name",       limit: 255
    t.string  "image_path", limit: 255
  end

  add_index "my_app_uis", ["my_app_id"], name: "index_my_app_uis_on_my_app_id", using: :btree

  create_table "my_apps", force: :cascade do |t|
    t.string "domain",       limit: 255
    t.string "description",  limit: 2014
    t.string "technologies", limit: 255
  end

  create_table "visitor_locations", force: :cascade do |t|
    t.integer "visitor_id",     limit: 4
    t.string  "dma_code",       limit: 5
    t.string  "asn",            limit: 10
    t.string  "city",           limit: 30
    t.decimal "latitude",                  precision: 10, scale: 4
    t.decimal "longitude",                 precision: 10, scale: 4
    t.string  "country_code",   limit: 5
    t.integer "offset",         limit: 4
    t.string  "country_name",   limit: 25
    t.string  "region_code",    limit: 5
    t.string  "isp",            limit: 50
    t.string  "time_zone",      limit: 25
    t.string  "area_code",      limit: 5
    t.string  "continent_code", limit: 5
    t.string  "region_name",    limit: 50
    t.string  "postal_code",    limit: 25
    t.string  "country_code3",  limit: 5
    t.string  "metro_code",     limit: 5
    t.string  "zip_code",       limit: 15
  end

  create_table "visitors", force: :cascade do |t|
    t.string   "remote_ip",    limit: 255
    t.string   "remote_host",  limit: 255
    t.string   "server_name",  limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "is_important",             default: true
  end

  create_table "visitors_backups", force: :cascade do |t|
    t.string "ip", limit: 255
  end

end
