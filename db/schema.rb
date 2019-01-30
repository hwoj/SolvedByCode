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

ActiveRecord::Schema.define(version: 20190130013804) do

  create_table "applicants", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "resume"
    t.string "password_digest"
  end

  create_table "companies", force: :cascade do |t|
    t.string "companyname"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.text "description"
    t.string "location"
    t.string "website"
    t.string "size"
    t.string "industries"
    t.string "benefits"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "company"
    t.string "location"
    t.string "technologies"
    t.string "field"
    t.string "pay"
    t.string "job_type"
    t.string "experience_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
  end

end
