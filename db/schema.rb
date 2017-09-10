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

ActiveRecord::Schema.define(version: 20170910173216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "crews", force: :cascade do |t|
    t.string   "name"
    t.string   "mission"
    t.text     "description"
    t.date     "creation_date"
    t.integer  "nb_collaborators"
    t.integer  "average_age"
    t.integer  "percentage_women"
    t.text     "team_description"
    t.integer  "percentage_english"
    t.string   "value1"
    t.string   "value2"
    t.string   "value3"
    t.string   "quote"
    t.string   "quote_author"
    t.string   "phone"
    t.string   "skype"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "website"
    t.boolean  "newsletter"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "description_working_place"
    t.string   "city"
    t.string   "country"
    t.string   "address"
    t.string   "zip_code"
    t.string   "closest_metro_working_place"
    t.index ["user_id"], name: "index_crews_on_user_id", using: :btree
  end

  create_table "missions", force: :cascade do |t|
    t.string   "title"
    t.text     "context"
    t.text     "description"
    t.string   "duration"
    t.string   "skill"
    t.text     "material"
    t.string   "referent_first_name"
    t.string   "referent_last_name"
    t.string   "referent_role"
    t.string   "referent_phone"
    t.string   "referent_email"
    t.string   "host_first_name"
    t.string   "host_last_name"
    t.string   "host_role"
    t.string   "host_phone"
    t.text     "description_hosting_place"
    t.string   "city"
    t.string   "country"
    t.string   "address"
    t.string   "zip_code"
    t.string   "closest_metro_hosting_place"
    t.string   "nb_min_ride"
    t.text     "other_comment"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "crew_id"
    t.string   "status"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["crew_id"], name: "index_missions_on_crew_id", using: :btree
  end

  create_table "packers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "sexe"
    t.integer  "age"
    t.string   "nationality"
    t.text     "story"
    t.string   "job"
    t.string   "value1"
    t.string   "value2"
    t.string   "value3"
    t.string   "quote"
    t.string   "quote_author"
    t.string   "city"
    t.string   "country"
    t.string   "address"
    t.string   "zip_code"
    t.string   "skype"
    t.string   "phone"
    t.string   "website"
    t.string   "cv_link"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "other_link"
    t.boolean  "newsletter"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["user_id"], name: "index_packers_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "role"
    t.boolean  "admin",                  default: false
    t.string   "provider"
    t.string   "uid"
    t.string   "token"
    t.datetime "token_expiry"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "crews", "users"
  add_foreign_key "missions", "crews"
  add_foreign_key "packers", "users"
end
