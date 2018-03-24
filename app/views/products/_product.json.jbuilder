json.extract! product, :id, :Product_Name, :Material, :Heel, :ProductStatus, :DateofArrival, :SerialNumber, :StockQuantity, :ImageURL, :created_at, :updated_at
json.url product_url(product, format: :json)
