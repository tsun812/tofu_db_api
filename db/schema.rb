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

ActiveRecord::Schema.define(version: 20220222214637) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.string   "primary_field"
    t.string   "secondary_field"
    t.string   "background_color"
    t.string   "description"
    t.string   "font"
    t.string   "display_theme"
    t.string   "img_url"
    t.string   "app_name"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "user_id"
    t.string   "sort_by",          default: "date_newest"
  end

  create_table "fields", force: :cascade do |t|
    t.string   "field_name"
    t.string   "field_type",     default: "Text"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "application_id"
  end

  create_table "records", force: :cascade do |t|
    t.integer  "position"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "application_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "values", force: :cascade do |t|
    t.string   "field_value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "record_id"
    t.integer  "field_id"
  end

  add_foreign_key "applications", "users"
  add_foreign_key "fields", "applications"
  add_foreign_key "records", "applications"
  add_foreign_key "values", "fields"
  add_foreign_key "values", "records"
end
