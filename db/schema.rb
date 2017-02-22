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

ActiveRecord::Schema.define(version: 20170221211257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "auditoria", force: :cascade do |t|
    t.integer  "capacity",         null: false
    t.integer  "movie_theater_id", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "movie_theaters", force: :cascade do |t|
    t.text     "name",       null: false
    t.integer  "admin_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.text     "name",                                      null: false
    t.text     "pic_url",          default: "no_image.png"
    t.integer  "hours",                                     null: false
    t.integer  "minutes",                                   null: false
    t.text     "starring",                                  null: false
    t.text     "tagline",                                   null: false
    t.string   "plot",                                      null: false
    t.integer  "movie_theater_id",                          null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  create_table "receipts", force: :cascade do |t|
    t.text     "first_name",  null: false
    t.text     "last_name",   null: false
    t.text     "email",       null: false
    t.integer  "cc_info",     null: false
    t.date     "cc_exp_date", null: false
    t.float    "sale_price",  null: false
    t.integer  "showtime_id", null: false
    t.integer  "movie_id"
    t.integer  "seller_id",   null: false
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

end
