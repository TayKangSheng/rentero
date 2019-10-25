# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_25_033519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "loan_contracts", force: :cascade do |t|
    t.datetime "start", null: false
    t.datetime "end", null: false
    t.bigint "loanable_id", null: false
    t.bigint "borrower_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["borrower_id"], name: "index_loan_contracts_on_borrower_id"
    t.index ["loanable_id"], name: "index_loan_contracts_on_loanable_id"
  end

  create_table "loanables", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "location"
    t.string "contact"
    t.datetime "end"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "state", default: "waiting for collection"
    t.string "url", default: "http://www.diagonalthoughts.com/wp-content/uploads/2009/09/standard_gauge_-_morgan_fisher-1a_1.jpg"
    t.index ["user_id"], name: "index_loanables_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.index ["name"], name: "index_users_on_name", unique: true
  end

  add_foreign_key "loan_contracts", "loanables"
  add_foreign_key "loan_contracts", "users", column: "borrower_id"
  add_foreign_key "loanables", "users"
end
