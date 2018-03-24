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

ActiveRecord::Schema.define(version: 20180323221837) do

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
    t.integer "Country"
    t.integer "State"
    t.string "City"
    t.string "Zipcode"
    t.string "Address"
    t.integer "CustomerStatusID"
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
    t.integer "EmployeeStatusID"
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
    t.date "DateofArrival"
    t.text "SerialNumber"
    t.integer "StockQuantity"
    t.text "ImageURL"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservation_statuses", force: :cascade do |t|
    t.string "StatusName"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "Date"
    t.integer "CustomerID"
    t.integer "ReservStatusID"
    t.integer "ProductID"
    t.integer "ColorID"
    t.integer "HeelID"
    t.integer "Quantity"
    t.integer "EmployeeID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "StateName"
    t.string "StateAbbrev"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
