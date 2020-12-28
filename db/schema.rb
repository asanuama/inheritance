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

ActiveRecord::Schema.define(version: 20201228005708) do

  create_table "children", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.boolean  "is_male",         default: true
    t.date     "date_of_death"
    t.date     "date_of_mariage"
    t.boolean  "is_alive",        default: true
    t.boolean  "is_abandoned",    default: false
    t.boolean  "is_real_child",   default: true
    t.date     "adoption"
    t.integer  "decedent_id"
    t.string   "name_of_father"
    t.string   "name_of_mother"
    t.string   "relationship"
    t.text     "comment"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "decedents", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.boolean  "is_male",        default: true
    t.date     "date_of_death"
    t.boolean  "is_married",     default: true
    t.text     "comment"
    t.string   "name_of_father"
    t.string   "name_of_mother"
    t.string   "relationship"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.boolean  "is_male",         default: true
    t.date     "date_of_death"
    t.date     "date_of_mariage"
    t.boolean  "is_alive",        default: true
    t.boolean  "is_abandoned",    default: false
    t.boolean  "is_real_parent",  default: true
    t.date     "adoption"
    t.integer  "decedent_id"
    t.string   "name_of_father"
    t.string   "name_of_mother"
    t.string   "relationship"
    t.text     "comment"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "spouses", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.boolean  "is_male",         default: true
    t.date     "date_of_death"
    t.date     "date_of_mariage"
    t.boolean  "is_alive",        default: true
    t.boolean  "is_abandoned",    default: false
    t.integer  "decedent_id"
    t.string   "name_of_father"
    t.string   "name_of_mother"
    t.string   "relationship"
    t.text     "comment"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
