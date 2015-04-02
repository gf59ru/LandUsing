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

ActiveRecord::Schema.define(version: 20150401111055) do

  create_table "attachments", force: true do |t|
    t.integer  "request"
    t.binary   "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: true do |t|
    t.string   "name",       limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "requests", force: true do |t|
    t.integer  "zone"
    t.integer  "declarant"
    t.string   "content",    limit: 4000
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: true do |t|
    t.string   "name",            limit: 4000
    t.string   "email",           limit: 4000
    t.string   "password_digest", limit: 4000
    t.string   "remember_token",  limit: 4000
    t.boolean  "admin"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "zones", force: true do |t|
    t.integer  "type"
    t.integer  "city"
    t.string   "restriction", limit: 4000
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

end
