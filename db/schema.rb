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

ActiveRecord::Schema.define(version: 20170227180403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auditoria", force: :cascade do |t|
    t.integer  "capacity",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.text     "name",                                null: false
    t.text     "pic_url",    default: "no_image.png"
    t.integer  "hours",                               null: false
    t.integer  "minutes",                             null: false
    t.text     "starring",                            null: false
    t.text     "tagline",                             null: false
    t.string   "plot",                                null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.text     "name",        null: false
    t.text     "email",       null: false
    t.text     "cc_info",     null: false
    t.datetime "cc_exp_date", null: false
    t.integer  "showtime_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "showtimes", force: :cascade do |t|
    t.float    "price",         null: false
    t.datetime "start",         null: false
    t.datetime "finish",        null: false
    t.integer  "auditorium_id", null: false
    t.integer  "movie_id",      null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.text     "username",        null: false
    t.text     "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
