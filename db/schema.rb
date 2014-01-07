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

ActiveRecord::Schema.define(version: 20131226103853) do

  create_table "categories", force: true do |t|
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lairds", force: true do |t|
    t.string   "full_name"
    t.integer  "category_id"
    t.string   "image"
    t.string   "phone"
    t.string   "email"
    t.text     "describe"
    t.string   "status"
    t.integer  "work_as_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "souls", force: true do |t|
    t.string   "name"
    t.string   "second_name"
    t.string   "pname"
    t.integer  "category_id"
    t.integer  "old"
    t.decimal  "price",       precision: 8, scale: 2
    t.string   "image"
    t.string   "phone"
    t.string   "email"
    t.text     "describe"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_as", force: true do |t|
    t.string   "work_as"
    t.integer  "category_id"
    t.string   "image"
    t.integer  "old"
    t.decimal  "price",       precision: 8, scale: 2
    t.text     "describe"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
