# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Customer Status && Employee Status && Event Status
require 'csv'

State.destroy_all
Country.destroy_all

Reservation.destroy_all
ReservationStatus.destroy_all
Heel.destroy_all
Color.destroy_all

Product.destroy_all
ProductStatus.destroy_all
Material.destroy_all

Customer.destroy_all
CustomerStatus.destroy_all
Employee.destroy_all
EmployeeType.destroy_all
EmployeeStatus.destroy_all

# ===================================================================================
# ================== Look Up Tables (First) =========================================
# ===================================================================================

  HeelList = [55, 70, 85, 100, 120, 130, 150]
  HeelList.each do |name|
    Heel.create!(Height:name)
    end

# Employee Status and Product Status
  StatusList = ['Active', 'Inactive']
  StatusList.each do |name|
    EmployeeStatus.create!(StatusName:name)
    ProductStatus.create!(Description:name)
    end

# Customer Status
  CustStatList = ['Good', 'Medium', 'Bad']
  CustStatList.each do |name|
    CustomerStatus.create!(Description:name)
  end

# EmployeeType
  EmpTypeList = ['Store Manager', 'Assistant Store Manager', 'Sales Associate', 'Seasonal Associate', 'Operations Associate']
  EmpTypeList.each do |name|
    EmployeeType.create!(EmpTypeName:name)
  end

# Employee Status and Product Status
  ReserveList = ['Active', 'Pending', 'Complete']
  ReserveList.each do |name|
    ReservationStatus.create!(StatusName:name)
  end

# State
  File.open("#{Rails.root}/db/datafiles/State.csv") do |states|
    states.read.each_line do |state|
      state_name, state_abbrev = state.chomp.split(",")
      State.create!(:StateName=>state_name, :StateAbbrev=>state_abbrev)
    end
  end
#
# # Country Also needs to be added onto ERD | Luke, Mar 3, 2017
# File.open("#{Rails.root}/db/datafiles/Country.csv") do |countries|
#   countries.read.each_line do |country|
#     country_name, country_abbrev = country.chomp.split(",")
#     Country.create!(:CountryName=>country_name, :CountryAbbrev=>country_abbrev)
#   end
# end
#
# # Color
#   File.open("#{Rails.root}/db/datafiles/Color.csv") do |colors|
#     colors.read.each_line do |color|
#       color_name, color_code = color.chomp.split(",")
#       Color.create!(:ColorName=>color_name, :Hexidecimal=>color_code)
#     end
#   end