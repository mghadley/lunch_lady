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

ActiveRecord::Schema.define(version: 20160513203805) do

  create_table "meals", force: :cascade do |t|
    t.string   "main_dish"
    t.string   "side_dish_1"
    t.string   "side_dish_2"
    t.string   "add_ons"
    t.float    "wallet"
    t.float    "main_dish_price"
    t.float    "side_dish_1_price"
    t.float    "side_dish_2_price"
    t.float    "add_ons_price"
    t.float    "final_price"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
