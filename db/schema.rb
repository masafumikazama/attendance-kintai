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

ActiveRecord::Schema.define(version: 20200331134239) do

  create_table "attendances", force: :cascade do |t|
    t.date "worked_on"
    t.datetime "started_at"
    t.datetime "finished_at"
    t.string "note"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "finished_overwork_at"
    t.integer "next_day"
    t.string "work_process"
    t.string "superior"
    t.integer "change_edit"
    t.string "approval"
    t.string "superior_sign"
    t.string "superior_approval"
    t.string "month_approval"
    t.datetime "started_edit"
    t.datetime "finished_edit"
    t.integer "change"
    t.string "overwork_approval"
    t.integer "change_attendance"
    t.date "ymd"
    t.string "superior_name"
    t.date "approval_date"
    t.string "superior_select"
    t.index ["user_id"], name: "index_attendances_on_user_id"
  end

  create_table "bases", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "attendance"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
    t.string "department"
    t.datetime "basic_time", default: "2019-02-19 22:30:00"
    t.datetime "work_time", default: "2019-02-19 23:00:00"
    t.string "uid"
    t.integer "employee_number"
    t.datetime "basic_work_time", default: "2020-04-02 23:00:00"
    t.datetime "designated_work_start_time", default: "2019-02-19 23:00:00"
    t.datetime "designated_work_end_time", default: "2019-02-20 08:00:00"
    t.boolean "superior", default: false
    t.string "affiliation"
    t.date "ym"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
