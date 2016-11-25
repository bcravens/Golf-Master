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

ActiveRecord::Schema.define(version: 20161112160924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: :cascade do |t|
    t.integer "amount"
    # do you need course id? seems like you could get that from the hole
    t.integer "hole_id"
    t.integer "course_id"
    t.integer "event_id"
    t.integer "user_id"
    t.index ["course_id"], name: "index_bets_on_course_id", using: :btree
    t.index ["event_id"], name: "index_bets_on_event_id", using: :btree
    t.index ["hole_id"], name: "index_bets_on_hole_id", using: :btree
    t.index ["user_id"], name: "index_bets_on_user_id", using: :btree
  end

  create_table "courses", force: :cascade do |t|
    t.string   "img_url"
    t.string   "name"
    t.string   "location"
    # this feels like a duplication of data, couldn't you get num_holes by course.holes.length
    t.integer  "num_holes"
    # this could be lack of knowledge on my part, isn't par specific to a hole? If its not, seems like something you can aggregate from holes. That way if a holes par changes, so does the course, by virtue of the domain model.
    t.integer  "par"
    t.integer  "yardage"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.datetime "time"
    t.integer  "course_id"
    t.integer  "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_events_on_course_id", using: :btree
    t.index ["group_id"], name: "index_events_on_group_id", using: :btree
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holes", force: :cascade do |t|
    t.string   "img_url"
    t.integer  "hole_num"
    t.integer  "par"
    t.integer  "yardage"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_holes_on_course_id", using: :btree
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_memberships_on_group_id", using: :btree
    t.index ["user_id"], name: "index_memberships_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "username"
    t.string "password"
  end

  add_foreign_key "bets", "courses"
  add_foreign_key "bets", "events"
  add_foreign_key "bets", "holes"
  add_foreign_key "bets", "users"
  add_foreign_key "events", "courses"
  add_foreign_key "events", "groups"
  add_foreign_key "holes", "courses"
  add_foreign_key "memberships", "groups"
  add_foreign_key "memberships", "users"
end
