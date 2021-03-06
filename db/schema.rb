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

ActiveRecord::Schema.define(version: 20170513155940) do

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "number_phones"
    t.date     "born_date"
    t.string   "email"
    t.string   "picture"
    t.string   "huella"
    t.string   "zipcode"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "type_cliente"
    t.integer  "banned"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "indetifications", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "id_number"
    t.date     "expiration_date"
    t.string   "id_type"
    t.date     "expedition_date"
    t.date     "expedition_country"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["client_id"], name: "index_indetifications_on_client_id"
  end

  create_table "money", force: :cascade do |t|
    t.integer  "client_id"
    t.decimal  "cash_number"
    t.string   "enterprise_name"
    t.decimal  "money"
    t.decimal  "rate"
    t.date     "money_date"
    t.boolean  "redeemed"
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["client_id"], name: "index_money_on_client_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",             null: false
    t.string   "encrypted_password",     default: "",             null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,              null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name",                   default: "name user"
    t.integer  "type_user",              default: 1
    t.string   "picture",                default: "picture name"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
