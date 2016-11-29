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

ActiveRecord::Schema.define(version: 20161110171344) do

  create_table "breeds", force: :cascade do |t|
    t.string   "name"
    t.integer  "breed_id"
    t.integer  "lifespan"
    t.string   "shed"
    t.string   "pure"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.integer  "dog_id"
    t.integer  "breed_id"
    t.integer  "shelter_id"
    t.string   "name"
    t.string   "age"
    t.string   "gender"
    t.string   "size"
    t.string   "weight"
    t.string   "breed"
    t.string   "photo_link"
    t.integer  "number_of_likes"
    t.integer  "number_of_dislikes"
    t.integer  "number_of_hotdogs"
    t.string   "has_been_adopted"
    t.string   "is_available"
    t.string   "foster_family"
    t.string   "number_of_times_attempted_to_adopt"
    t.string   "hot_dog"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "dog_id"
    t.integer  "tinder_session_id"
    t.string   "type"
    t.date     "datetime"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "shelters", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "contact_url"
    t.string   "hours_url"
    t.string   "map_url"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tindersessions", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "datetime"
    t.integer  "number_of_likes_within_session"
    t.integer  "number_of_dislikes_within_session"
    t.integer  "number_of_hotdogs_within_session"
    t.integer  "max_set_of_dogs"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.integer  "user_id"
    t.string   "password"
    t.string   "type"
    t.integer  "tinder_session_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

end
