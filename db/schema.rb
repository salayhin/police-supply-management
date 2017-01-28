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

ActiveRecord::Schema.define(version: 20170128043701) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "api_keys", force: :cascade do |t|
    t.string   "access_token"
    t.integer  "user_id"
    t.boolean  "is_active",    default: true, null: false
    t.datetime "expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["access_token"], name: "index_api_keys_on_access_token", unique: true, using: :btree
    t.index ["user_id"], name: "index_api_keys_on_user_id", using: :btree
  end

  create_table "franchises", force: :cascade do |t|
    t.string   "factual_id"
    t.string   "name"
    t.text     "address"
    t.string   "locality"
    t.string   "region"
    t.string   "post_code"
    t.string   "country"
    t.string   "telephone"
    t.string   "website"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "hours_of_operations"
    t.text     "category_labels"
    t.string   "chain_name"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "fuel_stations", force: :cascade do |t|
    t.string   "name"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "address"
    t.string   "phone_number"
    t.text     "comments"
    t.string   "color_code"
    t.boolean  "is_active"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "item_requisitions", force: :cascade do |t|
    t.integer  "item_id"
    t.integer  "requisition_id"
    t.integer  "quantity"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "quantity"
    t.integer  "used",        default: 0
    t.text     "description"
    t.string   "status",      default: "active"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "requisitions", force: :cascade do |t|
    t.integer  "station_id"
    t.integer  "user_id"
    t.text     "description"
    t.string   "status",      default: "pending"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "station_update_infos", force: :cascade do |t|
    t.datetime "update_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "station_id"
  end

  create_table "usa_cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.integer  "zip_code"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "auth_token"
    t.string   "phone_number"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
