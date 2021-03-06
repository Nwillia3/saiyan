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

ActiveRecord::Schema.define(version: 20170926012406) do

  create_table "appointments", force: :cascade do |t|
    t.string   "name"
    t.text     "location"
    t.datetime "app_date"
    t.integer  "trainer_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trainer_id"], name: "index_appointments_on_trainer_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string   "username"
    t.string   "fullname"
    t.text     "fitnessBio"
    t.string   "height"
    t.integer  "weight"
    t.text     "diet"
    t.integer  "age"
    t.integer  "howOftenWorkOut"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_trainers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true
  end

  create_table "user_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "fullname"
    t.string   "username"
    t.text     "fitnessGoal"
    t.text     "diet"
    t.string   "height"
    t.integer  "weight"
    t.integer  "age"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["age"], name: "index_user_profiles_on_age"
    t.index ["diet"], name: "index_user_profiles_on_diet"
    t.index ["fitnessGoal"], name: "index_user_profiles_on_fitnessGoal"
    t.index ["fullname"], name: "index_user_profiles_on_fullname"
    t.index ["height"], name: "index_user_profiles_on_height"
    t.index ["user_id"], name: "index_user_profiles_on_user_id"
    t.index ["username"], name: "index_user_profiles_on_username"
    t.index ["weight"], name: "index_user_profiles_on_weight"
  end

  create_table "users", force: :cascade do |t|
    t.string   "fullname"
    t.string   "username"
    t.text     "fitnessGoal"
    t.text     "diet"
    t.string   "height"
    t.integer  "weight"
    t.integer  "age"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
