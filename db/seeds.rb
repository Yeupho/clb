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

  HeelList = [0, 35, 55, 60, 70, 85, 100, 120, 130, 140, 150, 160]
  HeelList.each do |name|
    Heel.create!(Height:name)
    end

  SizeList = [34, 34.5, 35, 35.5, 36, 36.5, 37, 37.5,
              38, 38.5, 39, 39.5, 40, 40.5, 41, 41.5, 42, 42.5]
  SizeList.each do |name|
    Size.create!(SizeName:name)
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

# Materials
  File.open("#{Rails.root}/db/datafiles/Materials.csv") do |materials|
    materials.read.each_line do |materials|
      mat_descr = materials.chomp.split(",")
      Material.create!(:Description=>mat_descr)
    end
  end

#Sizes
  # File.open("#{Rails.root}/db/datafiles/Sizes.csv") do |sizes|
  #   sizes.read.each_line do |sizes|
  #     size = sizes.chomp.split(",")
  #     Size.create!(:SizeName=>size)
  #   end
  # end


# State
  File.open("#{Rails.root}/db/datafiles/State.csv") do |states|
    states.read.each_line do |state|
      state_name, state_abbrev = state.chomp.split(",")
      State.create!(:StateName=>state_name, :StateAbbrev=>state_abbrev)
    end
  end

# Country Also needs to be added onto ERD | Luke, Mar 3, 2017
File.open("#{Rails.root}/db/datafiles/Country.csv") do |countries|
  countries.read.each_line do |country|
    country_name, country_abbrev = country.chomp.split(",")
    Country.create!(:CountryName=>country_name, :CountryAbbrev=>country_abbrev)
  end
end

# Color
  File.open("#{Rails.root}/db/datafiles/Color.csv") do |colors|
    colors.read.each_line do |color|
      color_name, color_code = color.chomp.split(",")
      Color.create!(:ColorName=>color_name, :Hexidecimal=>color_code)
    end
  end

# ===================================================================================
# ================== Non-associative Tables =========================================
# ===================================================================================
  File.open("#{Rails.root}/db/datafiles/Customer.csv") do |customers|
    customers.read.each_line do |customers|
      first_name, last_name, email, phone, country, state, city, zipcode,
          address, custstatus = customers.chomp.split(",")
      Customer.create!(:FirstName=>first_name, :LastName=>last_name, :Email=>email,
                       :Phone=>phone, :Country=>country, :State=>state, :City=>city,
                       :Zipcode=>zipcode, :Address=>address, :CustomerStatusID=>custstatus)
    end
  end

  File.open("#{Rails.root}/db/datafiles/Employee.csv") do |employee|
    employee.read.each_line do |employee|
      first_name, last_name, phone, emptypeid, empstatid = employee.chomp.split(",")
      Employee.create!(:FirstName=>first_name, :LastName=>last_name,
                       :Phone=>phone, :EmployeeTypeID=>emptypeid, :EmployeeStatusID=>empstatid)
    end
  end

  File.open("#{Rails.root}/db/datafiles/Products.csv") do |products|
    products.read.each_line do |products|
      prodname, material, heel, color, productstat, serialnum, imageurl = products.chomp.split(",")
      Product.create!(:Product_Name=>prodname, :Material=>material, :Heel=>heel,
                       :ProductStatus=>productstat, :SerialNumber=>serialnum, :ImageURL=>imageurl, :ColorID=>color)
    end
  end

