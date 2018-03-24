json.extract! customer, :id, :FirstName, :LastName, :Email, :Phone, :Country, :State, :City, :Zipcode, :Address, :CustomerStatusID, :created_at, :updated_at
json.url customer_url(customer, format: :json)
