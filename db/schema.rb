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

ActiveRecord::Schema.define(version: 20160513212027) do

  create_table "add_ons", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.float    "calories"
    t.float    "carbs"
    t.float    "protein"
    t.float    "fat"
    t.float    "sugar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dishes", force: :cascade do |t|
    t.string   "category"
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.float    "calories"
    t.float    "carbs"
    t.float    "protein"
    t.float    "fat"
    t.float    "sugar"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "meal_add_ons", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meal_dishes", force: :cascade do |t|
    t.integer  "meal_id"
    t.integer  "dish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "meal_dishes", ["dish_id"], name: "index_meal_dishes_on_dish_id"
  add_index "meal_dishes", ["meal_id"], name: "index_meal_dishes_on_meal_id"

  create_table "meals", force: :cascade do |t|
    t.float    "final_price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
