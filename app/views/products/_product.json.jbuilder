json.extract! product, :id, :product_name, :material, :heel, :productstatus, :dateofArrival, :serialnumber, :StockQuantity, :imageurl, :created_at, :updated_at
json.url product_url(product, format: :json)
