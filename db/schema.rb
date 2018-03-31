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

ActiveRecord::Schema.define(version: 20180331022955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "colors", force: :cascade do |t|
    t.string "ColorName"
    t.string "Hexidecimal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "CountryName"
    t.string "CountryAbbrev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_statuses", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "Email"
    t.string "Phone"
    t.integer "Country", default: 1
    t.integer "State", default: 43
    t.string "City"
    t.string "Zipcode"
    t.string "Address"
    t.integer "CustomerStatusID", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_statuses", force: :cascade do |t|
    t.string "StatusName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_types", force: :cascade do |t|
    t.string "EmpTypeName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "FirstName"
    t.string "LastName"
    t.string "Phone"
    t.integer "EmployeeTypeID"
    t.integer "EmployeeStatusID", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "heels", force: :cascade do |t|
    t.float "Height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "product_statuses", force: :cascade do |t|
    t.string "Description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "Product_Name"
    t.integer "Material"
    t.integer "Heel"
    t.integer "ProductStatus"
    t.text "SerialNumber"
    t.text "ImageURL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ColorID"
  end

  create_table "reservation_statuses", force: :cascade do |t|
    t.string "StatusName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "Date"
    t.integer "CustomerID", default: 1
    t.integer "ReservStatusID", default: 1
    t.integer "ProductID", default: 1
    t.integer "EmployeeID", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "SizeID"
  end

  create_table "sizes", force: :cascade do |t|
    t.float "SizeName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "StateName"
    t.string "StateAbbrev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
