json.extract! customer, :id, :firstname, :lastname, :email, :phone, :country, :state, :city, :zipcode, :address, :customerstatusid, :created_at, :updated_at
json.url customer_url(customer, format: :json)
