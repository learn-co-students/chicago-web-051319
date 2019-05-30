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

ActiveRecord::Schema.define(version: 2019_05_28_194046) do

  create_table "hats", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "creator_id"
  end

  create_table "pens", force: :cascade do |t|
    t.string "type"
    t.string "color"
    t.integer "student_id"
    t.index ["student_id"], name: "index_pens_on_student_id"
  end

  create_table "sales", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hat_id"
    t.integer "quantity"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
